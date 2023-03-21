import 'package:flutter_riverpod/flutter_riverpod.dart';

final validationService =
    Provider<ValidationService>((ref) => ValidationService());

class ValidationService {
  validateField(String text) {
    if (text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
