import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/state/qoutation_overview_state.dart';

class QuotationOverviewNotifier extends Notifier<QuotationOverviewState> {
  @override
  QuotationOverviewState build() {
    state = QuotationOverviewState.initial();
    return state;
  }
}