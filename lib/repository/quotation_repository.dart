import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/models/quotation.dart';
import 'package:quotation_module/services/hive_quotation_service.dart';
import 'package:quotation_module/state/qoutation_overview_state.dart';

final quotationRepository = Provider<QuotationRepository>((ref) => QuotationRepository(ref.watch(quotationService)));

class QuotationRepository {
  final IQuotationService quotationService;
  late List<Quotation> quotations;

  QuotationRepository(this.quotationService);

  createQuotation(Quotation quotation) async {
    await quotationService.createQuotation(quotation);
    return true;
  }

  getAllQuotationsForOverviewScreen() async {
    quotations = await quotationService.getAllQuotations();
    List<QuotationOverviewData> quotationsOverviewDataList = [];
    quotations.forEach((element) {quotationsOverviewDataList.add(QuotationOverviewData(title: element.quotationInfo.title, amount: element.totalPrice, company: element.costumerInfo.companyName, quotation: element));});
    return quotationsOverviewDataList;
  }
}