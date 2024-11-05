import 'package:pakashiyana/exports.dart';
import 'package:pakashiyana/views/splash/exports.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: kcWhitecolor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox.shrink(),
              Image.asset(AppImages.pakashiyanaLogo, height: 200),
            ]),
      ),
    ));
  }
}
