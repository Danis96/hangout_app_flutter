import 'package:flutter/material.dart';

import 'app/utils/navigation_repo.dart';
import 'locator.dart';
import 'routes/route_generator.dart';
import 'routes/routes.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: buildApp(),
    );
  }

  Widget buildApp() {
    return MaterialApp(
      navigatorKey: locator<NavigationRepo>().navigationKey,
      title: 'Hangout',
      builder: (BuildContext context, Widget? child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      initialRoute: Splash,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      // todo [add theme]
      // theme: CustomTheme.lightTheme,
      // themeMode: currentTheme.currentTheme,
    );
  }
}
