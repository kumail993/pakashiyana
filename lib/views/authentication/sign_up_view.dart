import 'package:pakashiyana/core/theme/ui_helper.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/authentication/controller/sign_up_controller.dart';
import 'package:pakashiyana/widgets/app_button.dart';
import 'package:pakashiyana/widgets/app_textfield.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      backgroundColor: kcWhitecolor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 120, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.signUpText,
              style: getMediumStyle(
                color: kcBlackColor,
                fontSize: 32,
              ),
            ),
            verticalSpaceSmall,
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                AppStrings.signUpPara,
                style: getRegularStyle(
                  color: kcTextGrey,
                  fontSize: 14,
                ),
              ),
            ),
            verticalSpaceMedium,
            AppTextField(
              labelText: "Name",
              controller: controller.emailController,
            ),
            verticalSpaceSmall,
            AppTextField(
              labelText: "Email",
              controller: controller.emailController,
            ),
            verticalSpaceSmall,
            GetBuilder(
              init: SignUpController(),
              builder: (_) => AppTextField(
                onVisibilityToggle: controller.toggleVisibility,
                suffixIcon: true,
                labelText: "Password",
                obscureText: controller.isObscure,
                controller: controller.passwordController,
              ),
            ),
            verticalSpaceSmall,
            Obx(
              () => AppTextField(
                labelText: 'Phone Number'.tr,
                controller: controller.phoneController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Phone number is required";
                  } else {
                    return null;
                  }
                },
                prefixIcon: GestureDetector(
                  onTap: () {
                    controller.selectCountry(context);
                  },
                  child: Container(
                      width: 75,
                      alignment: Alignment.center,
                      child: Text(
                          '${controller.countryData.value.flagEmoji} + ${controller.countryData.value.phoneCode}',
                          style: getRegularStyle(
                            color: kcTextGrey,
                            fontSize: 12,
                          ))),
                ),
              ),
            ),
            const Spacer(),
            Align(
                alignment: Alignment.center,
                child: PrimaryButton(text: "Sign Up", onPressed: () {})),
            verticalSpaceMedium,
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: getRegularStyle(color: kcBlackColor, fontSize: 14),
                  ),
                  horizontalSpaceSmall,
                  GestureDetector(
                    onTap: () {
                      controller.navigateToLogin();
                    },
                    child: Text(
                      'Login',
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
