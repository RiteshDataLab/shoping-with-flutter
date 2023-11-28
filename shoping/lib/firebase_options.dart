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
        return macos;
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
    apiKey: 'AIzaSyCLfLLmW-RkWJDefrtJzVxWeZhkQOCPi8I',
    appId: '1:874072299522:web:ce404db44f4994a1876f1b',
    messagingSenderId: '874072299522',
    projectId: 'easyshopping-d37d3',
    authDomain: 'easyshopping-d37d3.firebaseapp.com',
    storageBucket: 'easyshopping-d37d3.appspot.com',
    measurementId: 'G-Z7LRQX042R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSkppuRYi7zfCiy-R9kiUklxQHAopwbqo',
    appId: '1:874072299522:android:c66e7e091643ecaa876f1b',
    messagingSenderId: '874072299522',
    projectId: 'easyshopping-d37d3',
    storageBucket: 'easyshopping-d37d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfIM5tbUvC5xLM8aszHdtY7-Z-V0b775c',
    appId: '1:874072299522:ios:8fb2f34b9e220ad3876f1b',
    messagingSenderId: '874072299522',
    projectId: 'easyshopping-d37d3',
    storageBucket: 'easyshopping-d37d3.appspot.com',
    iosBundleId: 'com.example.shoping',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfIM5tbUvC5xLM8aszHdtY7-Z-V0b775c',
    appId: '1:874072299522:ios:8fb2f34b9e220ad3876f1b',
    messagingSenderId: '874072299522',
    projectId: 'easyshopping-d37d3',
    storageBucket: 'easyshopping-d37d3.appspot.com',
    iosBundleId: 'com.example.shoping',
  );
}