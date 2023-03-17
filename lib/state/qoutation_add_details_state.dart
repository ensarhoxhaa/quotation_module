import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:flutter/cupertino.dart';

@DataClass()
class QuotationAddDetailsState {
  /// Shorthand constructor
  QuotationAddDetailsState({
    required this.titleController,
    required this.descriptionController,
    required this.lineItemsControllers,
  });

  QuotationAddDetailsState.initial()
      : titleController = TextEditingController(),
        descriptionController = TextEditingController(),
        lineItemsControllers = [LineItemsController.initial()];

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final List<LineItemsController> lineItemsControllers;

  /// Returns a string with the properties of [QuotationAddDetailsState]
  @override
  String toString() {
    String value = 'QuotationAddDetailsScreenState{<optimized out>}';
    assert(() {
      value =
          'QuotationAddDetailsScreenState@<$hexIdentity>{titleController: $titleController, descriptionController: $descriptionController, lineItemsControllers: $lineItemsControllers}';
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
      lineItemsControllers,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is QuotationAddDetailsState &&
            runtimeType == other.runtimeType &&
            titleController == other.titleController &&
            descriptionController == other.descriptionController &&
            deepEquality(lineItemsControllers, other.lineItemsControllers);
  }

  /// Creates a new instance of [QuotationAddDetailsState] with optional new values
  QuotationAddDetailsState copyWith({
    final TextEditingController? titleController,
    final TextEditingController? descriptionController,
    final List<LineItemsController>? lineItemsControllers,
  }) {
    return QuotationAddDetailsState(
      titleController: titleController ?? this.titleController,
      descriptionController:
          descriptionController ?? this.descriptionController,
      lineItemsControllers: lineItemsControllers ?? this.lineItemsControllers,
    );
  }
}

@DataClass()
class LineItemsController {
  /// Shorthand constructor
  LineItemsController({
    required this.titleController,
    required this.priceController,
    required this.quantityController,
    required this.totalController,
  });

  final TextEditingController titleController;
  final TextEditingController priceController;
  final TextEditingController quantityController;
  final TextEditingController totalController;

  LineItemsController.initial() :
      titleController = TextEditingController(),
    priceController = TextEditingController(),
  quantityController = TextEditingController(),
  totalController = TextEditingController();

  /// Returns a string with the properties of [LineItemsController]
  @override
  String toString() {
    String value = 'LineItemsController{<optimized out>}';
    assert(() {
      value =
          'LineItemsController@<$hexIdentity>{titleController: $titleController, priceController: $priceController, quantityController: $quantityController, totalController: $totalController}';
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
      priceController,
      quantityController,
      totalController,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is LineItemsController &&
            runtimeType == other.runtimeType &&
            titleController == other.titleController &&
            priceController == other.priceController &&
            quantityController == other.quantityController &&
            totalController == other.totalController;
  }

  /// Creates a new instance of [LineItemsController] with optional new values
  LineItemsController copyWith({
    final TextEditingController? titleController,
    final TextEditingController? priceController,
    final TextEditingController? quantityController,
    final TextEditingController? totalController,
  }) {
    return LineItemsController(
      titleController: titleController ?? this.titleController,
      priceController: priceController ?? this.priceController,
      quantityController: quantityController ?? this.quantityController,
      totalController: totalController ?? this.totalController,
    );
  }
}
