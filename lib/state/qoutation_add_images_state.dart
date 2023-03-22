import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

@DataClass()
class QuotationAddImagesState {
  /// Shorthand constructor
  QuotationAddImagesState({
    required this.titleController,
    required this.descriptionController,
    required this.totalPriceController,
    required this.images,
  });

  QuotationAddImagesState.initial()
      : titleController = TextEditingController(),
        descriptionController = TextEditingController(),
        totalPriceController = TextEditingController(),
        images = [];

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController totalPriceController;
  final List<XFile> images;

  /// Returns a string with the properties of [QuotationAddImagesState]
  @override
  String toString() {
    String value = 'QuotationAddImagesState{<optimized out>}';
    assert(() {
      value =
          'QuotationAddImagesState@<$hexIdentity>{titleController: $titleController, descriptionController: $descriptionController, totalPriceController: $totalPriceController, images: $images}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      titleController,
      descriptionController,
      totalPriceController,
      images,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is QuotationAddImagesState &&
            runtimeType == other.runtimeType &&
            titleController == other.titleController &&
            descriptionController == other.descriptionController &&
            totalPriceController == other.totalPriceController &&
            deepEquality(images, other.images);
  }

  /// Creates a new instance of [QuotationAddImagesState] with optional new values
  QuotationAddImagesState copyWith({
    final TextEditingController? titleController,
    final TextEditingController? descriptionController,
    final TextEditingController? totalPriceController,
    final List<XFile>? images,
  }) {
    return QuotationAddImagesState(
      titleController: titleController ?? this.titleController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      totalPriceController: totalPriceController ?? this.totalPriceController,
      images: images ?? this.images,
    );
  }
}
