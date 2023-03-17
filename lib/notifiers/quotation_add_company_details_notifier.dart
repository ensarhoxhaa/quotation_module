import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/routes.dart';
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

  bool _validateForm() {
    if(state.companyNameController.text.isEmpty) {
      state = state.copyWith(companyNameError: true);
      return false;
    }
    else {
      state = state.copyWith(companyNameError: false);
      return true;
    }
  }

  void goToAddDetailsScreen() {
    if(_validateForm()) {
      ref.read(navigatorProvider).goToPage(quotationAddDetailsScreen);
    }
  }
}