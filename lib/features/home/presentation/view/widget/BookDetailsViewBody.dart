import 'package:flutter/material.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../../data/model/BookModel.dart';
import 'BooksAction.dart';
import 'CustomAppBarDetails.dart';
import 'CustomBookImage.dart';
import 'RatingWidget.dart';
import 'SimilarBookList.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SafeArea(
            child: CustomAppBarDetails(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: CustomBookImage(
                bookModel.volumeInfo?.imageLinks?.thumbnail ?? ""),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(bookModel.volumeInfo?.title != null && bookModel.volumeInfo!.title!.isNotEmpty
                  ? bookModel.volumeInfo!.title!
                  : "No author available",
                style: Styles.textStyle20,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Align(
              alignment: Alignment.center,
              child: Text(bookModel.volumeInfo?.authors != null && bookModel.volumeInfo!.authors!.isNotEmpty
                  ? bookModel.volumeInfo!.authors![0]
                  : "No author available",
                style: Styles.textStyle14,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          RatingWidget(
            mainAxisAlignment: MainAxisAlignment.center,
            bookModel: bookModel,
          ),
          const SizedBox(
            height: 25,
          ),
          BooksAction(
            bookModel: bookModel,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: Styles.textStyle14,
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarBooksList()
        ],
      ),
    );
  }
}
