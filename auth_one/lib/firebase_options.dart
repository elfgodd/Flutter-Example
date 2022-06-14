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
    apiKey: 'AIzaSyBgg_MPi7FGxXxaLfQJn45KbPup0nvN_l0',
    appId: '1:881281343656:web:df022a9a9043beffc6629d',
    messagingSenderId: '881281343656',
    projectId: 'auth-one-9e239',
    authDomain: 'auth-one-9e239.firebaseapp.com',
    storageBucket: 'auth-one-9e239.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPb0JMIivwKl6wSb6jCFC9klZvGuKIgtU',
    appId: '1:881281343656:android:18a6de9c54f9269fc6629d',
    messagingSenderId: '881281343656',
    projectId: 'auth-one-9e239',
    storageBucket: 'auth-one-9e239.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4qoM6P6ruVgQLIAluTVJNGSHqdPGULKw',
    appId: '1:881281343656:ios:8e95b00c66bf54d3c6629d',
    messagingSenderId: '881281343656',
    projectId: 'auth-one-9e239',
    storageBucket: 'auth-one-9e239.appspot.com',
    iosClientId: '881281343656-6t72r158brudbli9sgf7p8m940ovhvsr.apps.googleusercontent.com',
    iosBundleId: 'com.example.auth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4qoM6P6ruVgQLIAluTVJNGSHqdPGULKw',
    appId: '1:881281343656:ios:8e95b00c66bf54d3c6629d',
    messagingSenderId: '881281343656',
    projectId: 'auth-one-9e239',
    storageBucket: 'auth-one-9e239.appspot.com',
    iosClientId: '881281343656-6t72r158brudbli9sgf7p8m940ovhvsr.apps.googleusercontent.com',
    iosBundleId: 'com.example.auth',
  );
}