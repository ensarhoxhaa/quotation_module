import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/state/qoutation_add_details_state.dart';

final quotationAddDetailsNotifier = NotifierProvider<QuotationAddDetailsNotifier, QuotationAddDetailsState>(() {
  return QuotationAddDetailsNotifier();
});


class QuotationAddDetailsNotifier extends Notifier<QuotationAddDetailsState> {
  @override
  QuotationAddDetailsState build() {
    state = QuotationAddDetailsState.initial();
    return state;
  }

  void addNewLineItem() {
   state = state.copyWith(lineItemsControllers: [...state.lineItemsControllers, LineItemsController.initial()]);
  }

  void removeLineItemByIndex(int index) {
    List<LineItemsController> list = state.lineItemsControllers;
    list.removeAt(index);
    state = state.copyWith(lineItemsControllers: list);
  }
}