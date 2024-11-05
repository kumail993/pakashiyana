import 'package:pakashiyana/components.dart/onboarding_image.dart';
import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/onboarding/welcome_controller.dart';
import 'package:pakashiyana/views/onboarding/widgets/welcome_content.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WelcomeController());
    return const Scaffold(
      body: Stack(
        children: [
          OnboardingImage(),
          OnBoardingContent(),
        ],
      ),
    );
  }
}
