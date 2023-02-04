import 'package:flutter/material.dart';
import 'package:magicsour/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main(dynamic args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}
