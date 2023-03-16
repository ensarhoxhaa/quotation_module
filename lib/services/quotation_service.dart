import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/models/quotation.dart';

final quotationService = Provider<QuotationService>((ref) => QuotationService(Dio()));

abstract class IQuotationService {
  Future<bool> createQuotation();
  Future<List<Quotation>> getAllQuotations();
}

class QuotationService implements IQuotationService {

  QuotationService(this._dio);

  final Dio _dio;

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