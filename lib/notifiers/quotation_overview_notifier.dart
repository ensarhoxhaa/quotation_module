import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/repository/quotation_repository.dart';
import 'package:quotation_module/state/qoutation_overview_state.dart';

class QuotationOverviewNotifier extends Notifier<QuotationOverviewState> {
  @override
  QuotationOverviewState build() {
    state = QuotationOverviewState.initial();
    return state;
  }

  getAllQuotations() {
    state = state.copyWith(quotations: ref.read(quotationRepository).getAllQuotationsForOverviewScreen());
  }
}