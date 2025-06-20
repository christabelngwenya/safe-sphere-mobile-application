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
    apiKey: 'AIzaSyBly7t4DDkFgiORtpyNEewfMvQPOp2f9jc',
    appId: '1:935254924601:web:6e71251c9139a5a7b31ce8',
    messagingSenderId: '935254924601',
    projectId: 'sphere-5dde8',
    authDomain: 'sphere-5dde8.firebaseapp.com',
    storageBucket: 'sphere-5dde8.appspot.com',
    measurementId: 'G-JMHHPLKSPV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_S9rg7ZPIfaq-aCKIQXMC5F5hwk7EWDU',
    appId: '1:935254924601:android:130264c7442038bdb31ce8',
    messagingSenderId: '935254924601',
    projectId: 'sphere-5dde8',
    storageBucket: 'sphere-5dde8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKnxK7-JoRbQO5I_EhstLwT157fno13wM',
    appId: '1:935254924601:ios:92f530deb9b2b3e9b31ce8',
    messagingSenderId: '935254924601',
    projectId: 'sphere-5dde8',
    storageBucket: 'sphere-5dde8.appspot.com',
    iosBundleId: 'com.example.sphere',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKnxK7-JoRbQO5I_EhstLwT157fno13wM',
    appId: '1:935254924601:ios:ce046726f3f24006b31ce8',
    messagingSenderId: '935254924601',
    projectId: 'sphere-5dde8',
    storageBucket: 'sphere-5dde8.appspot.com',
    iosBundleId: 'com.example.sphere.RunnerTests',
  );
}
