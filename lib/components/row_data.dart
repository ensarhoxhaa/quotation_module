import 'package:flutter/material.dart';
import 'package:quotation_module/design/text_styles.dart';

class RowData extends StatelessWidget {
  const RowData({Key? key, required this.title, required this.data}) : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$title: ", style: boldTextStyle,),
        Text(data, style: defaultTextStyle,)
      ],
    );
  }
}
