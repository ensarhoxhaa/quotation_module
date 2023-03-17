import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/state/qoutation_add_company_details_state.dart';

final quotationAddCompanyDetailsNotifier = NotifierProvider<QuotationAddCompanyDetailsNotifier, QuotationAddCompanyDetailsState>(() {
  return QuotationAddCompanyDetailsNotifier();
});

class QuotationAddCompanyDetailsNotifier extends Notifier<QuotationAddCompanyDetailsState> {
  @override
  QuotationAddCompanyDetailsState build() {
    state = QuotationAddCompanyDetailsState.initial();
    return state;
  }


}