import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/models/customer_info.dart';
import 'package:quotation_module/models/quotation.dart';
import 'package:quotation_module/models/quotation_info.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/notifiers/quotation_add_company_details_notifier.dart';
import 'package:quotation_module/notifiers/quotation_add_details_notifier.dart';
import 'package:quotation_module/notifiers/quotation_overview_notifier.dart';
import 'package:quotation_module/repository/quotation_repository.dart';
import 'package:quotation_module/routes.dart';
import 'package:quotation_module/services/parsing_service.dart';
import 'package:quotation_module/state/qoutation_add_images_state.dart';

final quotationAddImagesNotifier =
    NotifierProvider<QuotationAddImagesNotifier, QuotationAddImagesState>(() {
  return QuotationAddImagesNotifier();
});

class QuotationAddImagesNotifier extends Notifier<QuotationAddImagesState> {
  @override
  QuotationAddImagesState build() {
    state = QuotationAddImagesState.initial();
    return state;
  }

  completeQuotationCreationFlow() async{
    if(await createQuotation()) {
      ref.read(quotationOverviewNotifier.notifier).updateQuotations();
      ref.read(quotationAddCompanyDetailsNotifier.notifier).clearState();
      ref.read(quotationAddDetailsNotifier.notifier).clearState();
      ref.read(navigatorProvider).goToPageAndRemoveAll(quotationOverviewScreen);
    }
    else {
      //throw error
    }
  }

  Future<bool> createQuotation() async {
    return await ref.read(quotationRepository).createQuotation(Quotation(
        costumerInfo: ref
            .read(quotationAddCompanyDetailsNotifier.notifier)
            .getFieldInfo(),
        quotationInfo:
            ref.read(quotationAddDetailsNotifier.notifier).getFieldInfo(),
        totalPrice: ref.read(parsingService).parseDoubleFromString(state.totalPriceController.text),
        photos: []));
  }

  double calculateTotalPrice(List<double> listItemTotals) {
    double sum = 0;
    for (var element in listItemTotals) {
      sum += element;
    }
    return sum;
  }

  initTextFieldsWithData() {
    state.titleController.text = ref.read(quotationAddDetailsNotifier).titleController.text;
    state.descriptionController.text = ref.read(quotationAddDetailsNotifier).descriptionController.text;
    state.totalPriceController.text = calculateTotalPrice(ref.read(quotationAddDetailsNotifier.notifier).getAllListItemsPrices()).toString();
  }

}
