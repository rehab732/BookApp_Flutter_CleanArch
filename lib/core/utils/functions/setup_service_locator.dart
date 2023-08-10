import 'package:dio/dio.dart';

import '../../../features/home/data/data_sources/home_local_data_source.dart';
import '../../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../../features/home/data/repos/home_repo_impl.dart';
import '../../../main.dart';
import '../api_service.dart';

void serviceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      localDataSource: HomeLocalDataSourceImplementation(),
      homeRemoteDataSource: HomeRemoteDataSourceImplementation(getIt.get<ApiService>()),
    ),
  );
}
