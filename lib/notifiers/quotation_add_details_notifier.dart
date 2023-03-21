import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/models/line_item.dart';
import 'package:quotation_module/models/quotation_info.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/notifiers/quotation_add_images_notifier.dart';
import 'package:quotation_module/routes.dart';
import 'package:quotation_module/services/parsing_service.dart';
import 'package:quotation_module/services/validation_service.dart';
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
    if (_validateForm()) {
      _removeEmptyLineItems();
      ref.read(quotationAddImagesNotifier.notifier).initTextFieldsWithData();
      ref.read(navigatorProvider).goToPage(quotationAddImagesScreen);
    }
  }

  bool _validateForm() {
    bool isValid =
    ref.read(validationService).validateField(state.titleController.text);
    state = state.copyWith(titleError: !isValid);
    return isValid;
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

  List<LineItem> getLineItemsInfo() {
    List<LineItem> itemList = [];
    for (int i = 0; i < state.lineItemsControllers.length; i++) {
      itemList.add(LineItem(
          title: state.lineItemsControllers[i].titleController.text,
          price: ref.read(parsingService).parseDoubleFromString(
              state.lineItemsControllers[i].titleController.text),
          quantity: ref.read(parsingService).parseDoubleFromString(state.lineItemsControllers[i].titleController.text),
          totalPrice:
          ref.read(parsingService).parseDoubleFromString(state.lineItemsControllers[i].titleController.text)));
    }
    return itemList;
  }

  calculateLineItemPrice(int index) {
    if (state.lineItemsControllers[index].priceController.text.isEmpty ||
        state.lineItemsControllers[index].quantityController.text.isEmpty) {
      state.lineItemsControllers[index].totalController.text = "";
    }
    else {
      double totalPrice = ref.read(parsingService).parseDoubleFromString(
          state.lineItemsControllers[index].priceController.text) +
          ref.read(parsingService).parseDoubleFromString(
              state.lineItemsControllers[index].quantityController.text);
      state.lineItemsControllers[index].totalController.text =
          totalPrice.toString();
    }
  }

  QuotationInfo getFieldInfo() {
    return QuotationInfo(
        title: state.titleController.text,
        description: state.descriptionController.text,
        lineItems: getLineItemsInfo());
  }

  List<double> getAllListItemsPrices() {
    List<double> listItemPrices = [];
    for (var element in state.lineItemsControllers) {
      listItemPrices.add(ref.read(parsingService).parseDoubleFromString(element.totalController.text));
    }
    return listItemPrices;
  }

  void clearState() {
    state = QuotationAddDetailsState.initial();
  }
}
