import 'package:bookly/core/utils/ServiceLocator.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/home_repo/Home_Repo_Imp.dart';
import 'package:bookly/features/home/presentation/viewmodel/featured_book_cubit.dart';
import 'package:bookly/features/home/presentation/viewmodel/newest_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/App_Router.dart';
import 'core/utils/colors.dart';


void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(
           getIt.get<HomeRepoImp>()
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(
            getIt.get<HomeRepoImp>()
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
