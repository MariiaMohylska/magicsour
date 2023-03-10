// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB4nvAoZMRfz5Lm8hQIjxzP4IfejH4li7g',
    appId: '1:500614563374:web:500a6a34e0856c1a7001bf',
    messagingSenderId: '500614563374',
    projectId: 'magicsour-5c971',
    authDomain: 'magicsour-5c971.firebaseapp.com',
    databaseURL: 'https://magicsour-5c971-default-rtdb.firebaseio.com',
    storageBucket: 'magicsour-5c971.appspot.com',
    measurementId: 'G-REEGG6L2V2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUjqHqnOJoL7jNX-gC3sS8vtOQF9BvYZs',
    appId: '1:500614563374:android:e08884a963f09cf07001bf',
    messagingSenderId: '500614563374',
    projectId: 'magicsour-5c971',
    databaseURL: 'https://magicsour-5c971-default-rtdb.firebaseio.com',
    storageBucket: 'magicsour-5c971.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgYL7G-aRX9S_e6lGtSqp8MtfP_EI0d14',
    appId: '1:500614563374:ios:275211cc10fcb5867001bf',
    messagingSenderId: '500614563374',
    projectId: 'magicsour-5c971',
    databaseURL: 'https://magicsour-5c971-default-rtdb.firebaseio.com',
    storageBucket: 'magicsour-5c971.appspot.com',
    androidClientId: '500614563374-9iuucl6u1gbe76uo8lgsqeun4dfks6qu.apps.googleusercontent.com',
    iosClientId: '500614563374-ng7a8o01p9l0k7psj4ao9ins14vhf2t2.apps.googleusercontent.com',
    iosBundleId: 'com.example.magicsour',
  );
}
