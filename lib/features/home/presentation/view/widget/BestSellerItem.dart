  import 'package:flutter/material.dart';
  import 'package:go_router/go_router.dart';


  import '../../../../../core/utils/App_Router.dart';
import '../../../../../core/utils/text_styles.dart';
import '../../../data/model/BookModel.dart';
  import 'CustomBookImage.dart';
import 'RatingWidget.dart';

  class BestSellerListViewItem extends StatelessWidget {
    const BestSellerListViewItem({Key? key, required this.books}) : super(key: key);

    final BookModel books;

    @override
    Widget build(BuildContext context) {

      return GestureDetector(
        onTap: (){
          GoRouter.of(context).push(AppRouter.routeToDetails , extra: books);
        },

        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5/4,
               child: CustomBookImage(
                 books.volumeInfo?.imageLinks?.thumbnail ?? "",
               ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child:  Text(books.volumeInfo?.title ?? "",
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    const SizedBox(
                      height: 3,
                    ),

                    Opacity(
                      opacity: 0.7,
                      child: Text(books.volumeInfo?.authors != null && books.volumeInfo!.authors!.isNotEmpty
                          ? books.volumeInfo!.authors![0]
                          : "No author available",
                        style: Styles.textStyle14,
                      ),
                    ),

                    const SizedBox(
                      height: 3,
                    ),

                    Row(
                      children: [
                        Text('free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                         RatingWidget(mainAxisAlignment: MainAxisAlignment.start , bookModel: books,),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }
