import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/models/customer_info.dart';
import 'package:quotation_module/models/quotation.dart';
import 'package:quotation_module/models/quotation_info.dart';
import 'package:quotation_module/notifiers/quotation_add_company_details_notifier.dart';
import 'package:quotation_module/notifiers/quotation_add_details_notifier.dart';
import 'package:quotation_module/repository/quotation_repository.dart';
import 'package:quotation_module/routes.dart';
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

  createQuotation() {
    ref.read(quotationRepository).createQuotation(Quotation(
        costumerInfo: ref
            .read(quotationAddCompanyDetailsNotifier.notifier)
            .getFieldInfo(),
        quotationInfo:
            ref.read(quotationAddDetailsNotifier.notifier).getFieldInfo(),
        totalPrice: 2.0,
        photos: []));
  }
}
