import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/authentication/login_view.dart';
import 'package:pakashiyana/views/authentication/sign_up_view.dart';
import 'package:pakashiyana/views/navbar/navbar_view.dart';
import 'package:pakashiyana/views/onboarding/welcome_view.dart';
import 'package:pakashiyana/views/splash/splash_view.dart';

class AppRouter {
  static String initialRoute = Routes.splash;

  static List<GetPage> pages() {
    return [
      GetPage(name: Routes.splash, page: () => const SplashView()),
      GetPage(
        name: Routes.welcomeView,
        page: () => const WelcomeView(),
        transition: Transition.fadeIn,
      ),
      GetPage(name: Routes.loginView, page: () => const LoginView()),
      GetPage(
        name: Routes.signUpView,
        page: () => const SignUpView(),
        transition: Transition.fadeIn,
      ),
      GetPage(name: Routes.bottomNav, page: () => const BottomNavbar()),
    ];
  }
}
