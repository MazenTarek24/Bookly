import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.borderRadius,
      required this.textColor,
      required this.backGroundColor,required this.onPressed, required this.text }
      ): super(key: key);

  final Color textColor;
  final Color backGroundColor;
  final BorderRadius? borderRadius;

  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16.0),
          )),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textColor,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
