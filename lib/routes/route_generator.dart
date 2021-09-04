import 'package:flutter/material.dart';
import 'package:hangoutapp/app/providers/splash_provider.dart';
import 'package:hangoutapp/app/utils/navigation_animations.dart';
import 'package:hangoutapp/app/view/splash/splash_page.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Splash:
        return SlideAnimationTween(
          widget: Provider<SplashProvider>(create: (_) => SplashProvider(), lazy: false, child: SplashPage()),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<void>(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(
          child: Container(
            child: const Text('Error Screen'),
          ),
        ),
      );
    });
  }
}
