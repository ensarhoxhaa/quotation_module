import 'dart:convert';

import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  const ImageViewScreen({Key? key, required this.bytes}) : super(key: key);

  final String bytes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.memory(base64Decode(bytes)),
    );
  }
}
