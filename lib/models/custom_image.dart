import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:image_picker/image_picker.dart';

@DataClass(fromJson: true, toJson: true)
class CustomImage {
  /// Shorthand constructor
  CustomImage({
    required this.name,
    required this.bytes,
  });

  final String name;
  final String bytes;

  /// Returns a string with the properties of [CustomImage]
  @override
  String toString() {
    String value = 'CustomImage{<optimized out>}';
    assert(() {
      value = 'CustomImage@<$hexIdentity>{name: $name, bytes: $bytes}';
      return true;
    }());
    return value;
  }

  /// Returns a hash code based on [this] properties
  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      name,
      bytes,
    ]);
  }

  /// Compares [this] with [other] on identity, class type, and properties
  /// *with deep comparison on collections*
  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is CustomImage &&
            runtimeType == other.runtimeType &&
            name == other.name &&
            bytes == other.bytes;
  }

  /// Creates a new instance of [CustomImage] with optional new values
  CustomImage copyWith({
    final String? name,
    final String? bytes,
  }) {
    return CustomImage(
      name: name ?? this.name,
      bytes: bytes ?? this.bytes,
    );
  }

  /// Converts [CustomImage] to a [Map] json
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'bytes': bytes,
    };
  }

  /// Creates an instance of [CustomImage] from [json]
  factory CustomImage.fromJson(Map<dynamic, dynamic> json) {
    return CustomImage(
      name: json['name'] as String,
      bytes: json['bytes'] as String,
    );
  }

  static convertFromXFileToImage(List<XFile> xFile) async {
    List<CustomImage> list = [];
    for (int i = 0; i < xFile.length; i++) {
      File file = File(xFile[i].path);
      list.add(CustomImage(
          name: xFile[i].name, bytes: base64Encode(file.readAsBytesSync())));
    }
    return list;
  }
}