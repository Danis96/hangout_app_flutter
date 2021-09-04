import 'package:hangoutapp/app/utils/navigation_repo.dart';
import '../../locator.dart';

class SplashProvider {
  SplashProvider({this.defaultRoute = '/login'}) {
    onInit();
  }

  final NavigationRepo _navigationService = locator<NavigationRepo>();
  final String defaultRoute;

  Future<void> onInit() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    // todo [after auth process, here do autologin and that stuff]
    // final bool logged = isUserLoggedIn(userData);
    // if (logged){
    //   _navigationService.navigateAndRemove(decideNextRoute(userData));
    // }else{
    //   _navigationService.navigateAndRemove(defaultRoute);
    // }
  }

  bool isUserLoggedIn(String userData) {
    return userData != '';
  }
}
