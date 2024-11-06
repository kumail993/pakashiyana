import 'package:flutter/material.dart';
import 'package:pakashiyana/pakashiyana_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const PakashiyanaApp());
}
