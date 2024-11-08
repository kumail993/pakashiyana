import 'package:pakashiyana/core/helpers/ui_helper.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/onboarding/welcome_controller.dart';
import 'package:pakashiyana/views/onboarding/widgets/rounded_button.dart';

class OnBoardingContent extends GetView<WelcomeController> {
  const OnBoardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WelcomeController());
    return Padding(
      padding: const EdgeInsets.only(top: 120, left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            AppStrings.welcomeText,
            style: getMediumStyle(color: kcBlackColor, fontSize: 40),
          ),
          verticalSpaceMedium,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.center,
              AppStrings.welcomePara,
              style: getRegularStyle(color: kcTextGrey, fontSize: 14),
            ),
          ),
          verticalSpaceMedium,
          RoundedButton(
              text: AppStrings.exploreButtonText,
              onPressed: () {
                controller.nvigateToLogin();
              }),
        ],
      ),
    );
  }
}
