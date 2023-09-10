import 'package:bookly/core/utils/CustomLoadingIndicator.dart';
import 'package:bookly/core/utils/ErrorTexr.dart';
import 'package:bookly/features/home/presentation/viewmodel/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/App_Router.dart';
import 'CustomBookImage.dart';

class CustomListViewBook extends StatelessWidget {
  const CustomListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .28,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: GestureDetector(
                      onTap: (){
                        GoRouter.of(context).push(AppRouter.routeToDetails , extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ?? "https://i.pinimg.com/564x/1a/81/83/1a8183c805a5c512ed6fe4b41cecf5d2.jpg",
                      ),
                    ),
                  );
                }
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomErrorText(textError: state.messageError);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }

}