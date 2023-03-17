import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quotation_module/state/qoutation_add_images_state.dart';

class QuotationAddImagesNotifier extends Notifier<QuotationAddImagesState> {
  @override
  QuotationAddImagesState build() {
    state = QuotationAddImagesState.initial();
    return state;
  }
}