import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/services/quotation_service.dart';

final apiService = Provider<QuotationRepository>((ref) => QuotationRepository(ref.watch(quotationService)));

class QuotationRepository {
  final IQuotationService quotationService;

  QuotationRepository(this.quotationService);
}