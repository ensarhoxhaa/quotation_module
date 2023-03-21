import 'package:flutter_riverpod/flutter_riverpod.dart';

final parsingService = Provider<ParsingService>((ref) => ParsingService());

class ParsingService {
  double parseDoubleFromString(String text) {
    try {
      return double.parse(text);
    } catch (e) {
      return 0.0;
    }
  }

  int parseIntFromString(String text) {
    try {
      return int.parse(text);
    }
    catch(e) {
      return 0;
    }
  }
}
