import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/models/quotation.dart';
import 'package:quotation_module/navigator_provider.dart';
import 'package:quotation_module/repository/quotation_repository.dart';
import 'package:quotation_module/routes.dart';
import 'package:quotation_module/state/quotation_details_state.dart';

final quotationDetailsNotifier =
    NotifierProvider<QuotationDetailsNotifier, QuotationDetailsState>(() {
  return QuotationDetailsNotifier();
});

class QuotationDetailsNotifier extends Notifier<QuotationDetailsState> {
  @override
  QuotationDetailsState build() {
    state = QuotationDetailsState.initial();
    return state;
  }

  initQuotationDetails(Quotation quotation) {
    state = state.copyWith(quotation: quotation);
  }

  goToDetailsScreen(Quotation quotation) {
    initQuotationDetails(quotation);
    ref.read(navigatorProvider).goToPage(quotationDetailsScreen);
  }


}
