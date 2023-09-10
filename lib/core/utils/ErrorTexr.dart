import 'package:bookly/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomErrorText extends StatelessWidget {
  const CustomErrorText({Key? key, required this.textError}) : super(key: key);

  final String textError;
  @override
  Widget build(BuildContext context) {
    return Text(textError,style: Styles.textStyle18,);
  }
}
