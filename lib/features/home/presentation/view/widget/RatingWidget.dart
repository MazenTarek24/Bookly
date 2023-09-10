import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/text_styles.dart';


class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key, required this.mainAxisAlignment, required this.bookModel}) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;

  final BookModel bookModel;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ,
      children:   [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),

        const SizedBox(
          width: 6.3,
        ),
        Text(bookModel.volumeInfo?.averageRating.toString() ?? "0",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
         Opacity(
          opacity: 0.5,
         child: Text("(${bookModel.volumeInfo?.averageRating.toString() ?? "0" } )",
              style: Styles.textStyle14
          ),
        ),
      ],
    );
  }
}
