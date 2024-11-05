import 'package:pakashiyana/core/theme/ui_helper.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/authentication/controller/login_controller.dart';
import 'package:pakashiyana/widgets/app_button.dart';
import 'package:pakashiyana/widgets/app_textfield.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 120, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome\nBack!",
              style: getMediumStyle(
                color: kcBlackColor,
                fontSize: 32,
              ),
            ),
            verticalSpaceSmall,
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                "Enter Your Email and Password to get access to your account",
                style: getRegularStyle(
                  color: kcTextGrey,
                  fontSize: 14,
                ),
              ),
            ),
            verticalSpaceMedium,
            const AppTextField(labelText: "Email"),
            verticalSpaceSmall,
            const AppTextField(labelText: "Password", obscureText: true),
            verticalSpaceSmall,
            Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: Text(
                    'Forgot Password?',
                    style: getRegularStyle(color: kcBlackColor, fontSize: 14),
                  ),
                )),
            const Spacer(),
            Align(
                alignment: Alignment.center,
                child: PrimaryButton(text: "Login", onPressed: () {})),
            verticalSpaceMedium,
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: getRegularStyle(color: kcBlackColor, fontSize: 14),
                  ),
                  horizontalSpaceSmall,
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style:
                          getMediumStyle(color: kcPrimaryColor, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
