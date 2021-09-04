import 'package:get_it/get_it.dart';

import 'app/utils/navigation_repo.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationRepo());
}