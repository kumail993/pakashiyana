import 'package:pakashiyana/exports.dart';

class PakashiyanaApp extends StatelessWidget {
  const PakashiyanaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PakAshiyanaa',
      debugShowCheckedModeBanner: false,
      theme: theme,
      locale: const Locale('en_US'),
      fallbackLocale: const Locale('en_US'),
      defaultTransition: Transition.cupertino,
      initialRoute: AppRouter.initialRoute,
      getPages: AppRouter.pages(),
    );
  }
}
