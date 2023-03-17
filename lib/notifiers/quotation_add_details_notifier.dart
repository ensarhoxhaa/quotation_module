import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/routes.dart';
import 'package:quotation_module/state/qoutation_add_details_state.dart';

final quotationAddDetailsNotifier =
    NotifierProvider<QuotationAddDetailsNotifier, QuotationAddDetailsState>(() {
  return QuotationAddDetailsNotifier();
});

class QuotationAddDetailsNotifier extends Notifier<QuotationAddDetailsState> {
  @override
  QuotationAddDetailsState build() {
    state = QuotationAddDetailsState.initial();
    return state;
  }

  void addNewLineItem() {
    state = state.copyWith(lineItemsControllers: [
      ...state.lineItemsControllers,
      LineItemsController.initial()
    ]);
  }

  void removeLineItemByIndex(int index) {
    List<LineItemsController> list = state.lineItemsControllers;
    list.removeAt(index);
    state = state.copyWith(lineItemsControllers: list);
  }

  void goToAddImagesScreen() {
    if(_validateForm()) {
      _removeEmptyLineItems();
      ref.read(navigatorProvider).goToPage(quotationAddImagesScreen);
    }
  }

  bool _validateForm() {
    if (state.titleController.text.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  void _removeEmptyLineItems() {
    for (int i = 1; i < state.lineItemsControllers.length; i++) {
      if (state.lineItemsControllers[i].titleController.text.isEmpty &&
          state.lineItemsControllers[i].quantityController.text.isEmpty &&
          state.lineItemsControllers[i].priceController.text.isEmpty) {
        removeLineItemByIndex(i);
      }
    }
  }
}
