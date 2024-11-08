import 'package:pakashiyana/core/helpers/snackbar.dart';
import 'package:pakashiyana/exports.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthService _auth = AuthService();

  bool _isObscure = true;

  bool get isObscure => _isObscure;
  set isObscure(bool value) {
    _isObscure = value;
    update();
  }

  void toggleVisibility() {
    isObscure = !isObscure;
  }

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      bool response = await _auth.login(
          email: emailController.text, password: passwordController.text);
      if (response) {
        Snackbars.success("User Logged In Succesfully");
        Get.toNamed(Routes.bottomNav);
      } else {
        Snackbars.error("Invalid Credentials");
      }
    }
  }

  void navigateToSignUp() {
    Get.toNamed(Routes.signUpView);
  }
}
