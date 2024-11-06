import 'package:pakashiyana/exports.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObscure = true;

  bool get isObscure => _isObscure;
  set isObscure(bool value) {
    _isObscure = value;
    update();
  }

  void toggleVisibility() {
    isObscure = !isObscure;
  }

  void navigateToSignUp() {
    Get.toNamed(Routes.signUpView);
  }
}
