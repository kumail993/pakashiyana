import 'package:pakashiyana/exports.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Image.asset(
          AppImages.pakashiyanaWelcomeImage,
        ));
  }
}
