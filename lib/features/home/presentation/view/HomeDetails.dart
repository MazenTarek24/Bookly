import 'package:bookly/features/home/presentation/view/widget/BookDetailsViewBody.dart';
import 'package:bookly/features/home/presentation/viewmodel/related_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/BookModel.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}



class _HomeDetailsState extends State<HomeDetails> {

  @override
  void initState() {
    BlocProvider.of<RelatedBooksCubit>(context).fetchRelatedBooks(
      widget.bookModel.volumeInfo!.categories![0]
    );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children:  [
                BookDetailsViewBody(
                  bookModel: widget.bookModel,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
