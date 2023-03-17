import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.title,
    required this.width,
    required this.onTap,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  final String title;
  final double width;
  final VoidCallback onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width,
      child: TextButton(
        onPressed: onTap,
        child: isLoading ? CircularProgressIndicator() : Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all<Color>(
                Colors.blue),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(12.0)))),
      ),
    );
  }
}