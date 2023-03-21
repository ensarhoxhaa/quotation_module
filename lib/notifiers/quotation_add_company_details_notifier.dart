import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/models/customer_info.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/routes.dart';
import 'package:quotation_module/services/validation_service.dart';
import 'package:quotation_module/state/qoutation_add_company_details_state.dart';

final quotationAddCompanyDetailsNotifier = NotifierProvider<
    QuotationAddCompanyDetailsNotifier, QuotationAddCompanyDetailsState>(() {
  return QuotationAddCompanyDetailsNotifier();
});

class QuotationAddCompanyDetailsNotifier
    extends Notifier<QuotationAddCompanyDetailsState> {
  @override
  QuotationAddCompanyDetailsState build() {
    state = QuotationAddCompanyDetailsState.initial();
    return state;
  }

  bool _validateForm() {
    bool isValid = ref
        .read(validationService)
        .validateField(state.companyNameController.text);
    state = state.copyWith(companyNameError: !isValid);
    return isValid;
  }

  void goToAddDetailsScreen() {
    if (_validateForm()) {
      ref.read(navigatorProvider).goToPage(quotationAddDetailsScreen);
    }
  }

  CustomerInfo getFieldInfo() {
    return CustomerInfo(
        companyName: state.companyNameController.text,
        companyAddress: state.companyAddressController.text,
        vatNumber: int.parse(state.vatNumberController.text),
        companyEmail: state.emailAddressController.text);
  }
}
