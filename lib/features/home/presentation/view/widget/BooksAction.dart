import 'package:bookly/core/utils/url_launcher.dart';
import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:flutter/material.dart';

import 'CustomButton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});


  final  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children:  [
          Expanded(
            child: SizedBox(
              height: 48,
              child: CustomButton(
                text: "free",
                textColor: Colors.black,
                backGroundColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ), onPressed: () async {},
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 48,
              child: CustomButton(
                text: "preview",
                textColor: Colors.black,
                backGroundColor: const Color(0xffEF8262),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),onPressed: () async {
                  getUrlLauncher(bookModel.volumeInfo!.previewLink!);
              },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
