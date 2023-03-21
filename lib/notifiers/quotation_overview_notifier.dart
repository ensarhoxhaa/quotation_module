import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/repository/quotation_repository.dart';
import 'package:quotation_module/state/qoutation_overview_state.dart';

final quotationOverviewNotifier =
    AsyncNotifierProvider<QuotationOverviewNotifier, QuotationOverviewState>(() {
  return QuotationOverviewNotifier();
});

class QuotationOverviewNotifier extends AsyncNotifier<QuotationOverviewState> {
  @override
  FutureOr<QuotationOverviewState> build() async {
    if(state.value == null){
      state = AsyncData(QuotationOverviewState.initial());
    }
    state = await AsyncValue.guard(getAllQuotations);
    return state.value!;
  }

  Future<QuotationOverviewState> getAllQuotations() async{
    List<QuotationOverviewData> data = await ref.read(quotationRepository).getAllQuotationsForOverviewScreen();
    return state.value!.copyWith(quotations: data);
  }
  
  void updateQuotations() async {
    List<QuotationOverviewData> data = await ref.read(quotationRepository).getAllQuotationsForOverviewScreen();
    state = AsyncData(state.value!.copyWith(quotations: data));
  }
}
