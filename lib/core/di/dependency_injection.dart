import 'package:get_it/get_it.dart';

import '../routing/app_router.dart';

final getIt= GetIt.instance;
Future<void>setUpGetIt()async{
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

}