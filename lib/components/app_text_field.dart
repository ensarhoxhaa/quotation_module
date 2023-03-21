import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.textEditingController,
    required this.label,
    required this.maxLines,
    this.onTap,
    required this.showError,
    this.errorText,
    required this.autoFocus,
    this.scrollPadding,
    this.onChanged,
    this.color,
    this.height,
    this.autoCorrect,
    this.textInputType,
    required this.editable,
    this.focusNode,
    Key? key}) : super(key: key);

  final TextEditingController textEditingController;
  final String label;
  final int maxLines;
  final VoidCallback? onTap;
  final bool showError;
  final String? errorText;
  final bool autoFocus;
  final double? scrollPadding;
  final void Function(String)? onChanged;
  final Color? color;
  final double? height;
  final bool? autoCorrect;
  final TextInputType? textInputType;
  final bool editable;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: maxLines > 1 ? null : height,
          padding: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: showError ? Colors.red : Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: TextFormField(
            focusNode: focusNode,
            enabled: editable ?? true,
            enableInteractiveSelection: true,
            textCapitalization: TextCapitalization.sentences,
            controller: textEditingController,
            onTap: onTap,
            onChanged: onChanged,
            maxLines: maxLines,
            autofocus: autoFocus,
            enableSuggestions: autoCorrect ?? true,
            autocorrect: autoCorrect ?? true,
            keyboardType: textInputType ?? TextInputType.text,
            scrollPadding: EdgeInsets.only(bottom: scrollPadding ?? 120),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 8,bottom: 8),
                labelText: label,
                // labelStyle: textFieldLabelTextStyle,
                labelStyle: TextStyle(),
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.always),
          ),
        ),
        showError
            ? Padding(
            padding: EdgeInsets.only(left: 12,top: 8),
            child: Text(errorText ?? "",style: TextStyle(fontSize: 12,color: Colors.red),))
            : const SizedBox()
      ],
    );
  }
}