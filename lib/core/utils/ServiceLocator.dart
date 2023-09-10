import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/search_repo/search_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/home_repo/Home_Repo_Imp.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton(ApiService(Dio()));

  getIt.registerSingleton(
    HomeRepoImp(getIt.get<ApiService>()),
  );

  getIt.registerSingleton(
    SearchRepoImp(getIt.get<ApiService>()),
  );

}
