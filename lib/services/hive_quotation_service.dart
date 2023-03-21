import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:quotation_module/models/quotation.dart';

final quotationService = Provider<HiveQuotationService>((ref) => HiveQuotationService(Hive.box("local_box")));

abstract class IQuotationService {
  Future<bool> createQuotation(Quotation quotation);
  Future<List<Quotation>> getAllQuotations();
}

class HiveQuotationService implements IQuotationService {

  HiveQuotationService(this._localBox);

  final Box _localBox;

  @override
  Future<List<Quotation>> getAllQuotations() async {
    final data = _localBox.keys.map((e) {
      final item = _localBox.get(e);
      return Quotation.fromJson(item);
    }).toList();
    return data;
  }

  @override
  Future<bool> createQuotation(Quotation quotation) async {
    await _localBox.add(quotation.toJson());

    return true;
    // try {
    //   await _localBox.add(quotation.toJson());
    //   return true;
    // }
    // catch (e) {
    //   return false;
    // }
  }
}