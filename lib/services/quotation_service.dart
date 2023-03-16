import 'package:quotation_module/models/quotation.dart';

abstract class IQuotationService {
  Future<bool> createQuotation();
  Future<List<Quotation>> getAllQuotations();
}

class QuotationService implements IQuotationService{
  @override
  Future<List<Quotation>> getAllQuotations() {
    // TODO: implement getAllQuotations
    throw UnimplementedError();
  }

  @override
  Future<bool> createQuotation() {
    // TODO: implement createQuotation
    throw UnimplementedError();
  }
}