import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/splash/splash_view.dart';

class AppRouter {
  static String initialRoute = Routes.splash;

  static List<GetPage> pages() {
    return [
      GetPage(name: Routes.splash, page: () => const SplashView()),
    ];
  }
}
