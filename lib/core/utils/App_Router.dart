import 'package:bookly/core/utils/ServiceLocator.dart';
import 'package:bookly/features/home/data/home_repo/Home_Repo_Imp.dart';
import 'package:bookly/features/home/data/model/BookModel.dart';
import 'package:bookly/features/home/presentation/view/HomePage.dart';
import 'package:bookly/features/home/presentation/viewmodel/related_books_cubit.dart';
import 'package:bookly/features/search/data/search_repo/search_repo_imp.dart';
import 'package:bookly/features/search/presentation/viewmodel/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/HomeDetails.dart';
import '../../features/home/presentation/view/widget/SplashViewBody.dart';
import '../../features/search/presentation/view/search_details.dart';
import '../../features/search/presentation/view/searchview.dart';


abstract class AppRouter {
  static const routeToHome = '/homeView';
  static const routeToDetails = '/homeDetails';
  static const routeToSearch = '/SearchView';
  static const routeToSearchDetails = '/SearchViewDetails';

  static final router = GoRouter
    (
    routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashViewBody(),
    ),

    GoRoute(
      path: routeToHome,
      builder: (context, state) => const HomePage(),
    ),

      GoRoute(
        path: routeToDetails,
        builder: (context, state) => BlocProvider(
          create: (context) => RelatedBooksCubit(getIt.get<HomeRepoImp>()),
            child:  HomeDetails(
              bookModel: state.extra as BookModel,
            )
        ),
      ),

      GoRoute(
        path: routeToSearch,
        builder: (context, state) => BlocProvider
          (
          create: ((context) => SearchCubit(getIt.get<SearchRepoImp>())),
            child:  SearchView()
        ),
      ),

      GoRoute(
        path: routeToSearchDetails,
        builder: (context, state) =>  SearchDetails(
          bookModel: state.extra as BookModel,
        ),
      ),

  ]
  );
}
