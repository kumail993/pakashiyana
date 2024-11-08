

import 'package:pakashiyana/exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const PakashiyanaApp());
}
