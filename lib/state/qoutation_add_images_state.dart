import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:flutter/cupertino.dart';

@DataClass()
class QuotationAddImagesState {
  /// Shorthand constructor
  QuotationAddImagesState({
    required this.titleController,
    required this.descriptionController,
    required this.images,
  });

  QuotationAddImagesState.initial()
      : titleController = TextEditingController(),
        descriptionController = TextEditingController(),
        images = [];

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final List images;

  /// Returns a string with the properties of [QuotationAddImagesState]
  @override
  String toString() {
    String value = 'QuotationAddImagesState{<optimized out>}';
    assert(() {
      value =
          'QuotationAddImagesState@<$hexIdentity>{titleController: $titleController, descriptionController: $descriptionController, images: $images}';
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
            deepEquality(images, other.images);
  }

  /// Creates a new instance of [QuotationAddImagesState] with optional new values
  QuotationAddImagesState copyWith({
    final TextEditingController? titleController,
    final TextEditingController? descriptionController,
    final List<dynamic>? images,
  }) {
    return QuotationAddImagesState(
      titleController: titleController ?? this.titleController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      images: images ?? this.images,
    );
  }
}
