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
    apiKey: 'AIzaSyBrY55WOrGBejh7PLZfUhVOcStkM2T13Po',
    appId: '1:516249777171:web:7c46447b697daea691fbe6',
    messagingSenderId: '516249777171',
    projectId: 'zbuy-c272e',
    authDomain: 'zbuy-c272e.firebaseapp.com',
    storageBucket: 'zbuy-c272e.appspot.com',
    measurementId: 'G-ZT1XG8T18P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAo1Nf-oCiwVmuleZ4C-ZCqPZ5NYoWyBsU',
    appId: '1:516249777171:android:b96a8236e58deb5391fbe6',
    messagingSenderId: '516249777171',
    projectId: 'zbuy-c272e',
    storageBucket: 'zbuy-c272e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJSvDtxS2wNBBo4zRyUVTuj6nHkaAWZ4A',
    appId: '1:516249777171:ios:8fd6957d0ebe8d5f91fbe6',
    messagingSenderId: '516249777171',
    projectId: 'zbuy-c272e',
    storageBucket: 'zbuy-c272e.appspot.com',
    iosBundleId: 'com.example.zbuy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJSvDtxS2wNBBo4zRyUVTuj6nHkaAWZ4A',
    appId: '1:516249777171:ios:566a872fd657098b91fbe6',
    messagingSenderId: '516249777171',
    projectId: 'zbuy-c272e',
    storageBucket: 'zbuy-c272e.appspot.com',
    iosBundleId: 'com.example.zbuy.RunnerTests',
  );
}