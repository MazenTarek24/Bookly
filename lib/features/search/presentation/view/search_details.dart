import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../home/presentation/view/widget/BooksAction.dart';
import '../../../home/presentation/view/widget/CustomAppBarDetails.dart';
import '../../../home/presentation/view/widget/CustomBookImage.dart';
import '../../../home/presentation/view/widget/RatingWidget.dart';

class SearchDetails extends StatelessWidget {
  const SearchDetails({Key? key, required this.bookModel}) : super(key: key);

 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
            child: Column(
              children: [
                SearchDetailsViewBody(bookModel: bookModel ,)
              ],
            ),
      ),
    );
  }
}

class SearchDetailsViewBody extends StatelessWidget {
  const SearchDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
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
          height: 37,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
