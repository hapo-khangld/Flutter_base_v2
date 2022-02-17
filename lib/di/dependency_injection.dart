import '../data/remote/home/home_remote_data_source.dart';
import '../data/repositories/home_repository.dart';
import '../data/usecases/home/get_day_away_promoted_package_list.dart';

import '../services/shared_pref_service.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/shared_pref/shared_pref_manager.dart';
import '../services/graphql_service.dart';
import 'modules/local_modules.dart';
import 'modules/network_module.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Async singletons:----------------------------------------------------------
  sl.registerSingletonAsync<SharedPreferences>(
      () => LocalModule.provideSharedPreferences());

  // Singletons:----------------------------------------------------------------
  sl.registerSingleton<SharedPrefManager>(
      SharedPrefManager(await sl.getAsync<SharedPreferences>()));
  sl.registerSingleton<SharedPreferenceService>(SharedPreferenceService(sl()));

  sl.registerSingleton<GraphQLClient>(NetWorkModule.providerGrapQLCient(sl()));
  sl.registerSingleton<GraphQLService>(GraphQLService(sl<GraphQLClient>()));

  // Feature:-------------------------------------------------------------------
  _homeFeature();
}

void _homeFeature() {
  // Bloc

  // Usecase
  sl.registerLazySingleton(() => GetDayAwayPromotedPackageList(sl()));

  // Repository
  sl.registerLazySingleton<HomeRepository>(() => HomeRepository(sl()));

  // Data source
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource(sl()));
}
