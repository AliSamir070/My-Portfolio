// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCmvcqt4JPwD6ffnKELAxps7eU-br9XfLI',
    appId: '1:823410562720:web:32a8c6d74f163cb9701bc5',
    messagingSenderId: '823410562720',
    projectId: 'myportfolio-9e2c5',
    authDomain: 'myportfolio-9e2c5.firebaseapp.com',
    storageBucket: 'myportfolio-9e2c5.appspot.com',
    measurementId: 'G-Z0X7VLK0FM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCN63vgdyw0awiWSsPF36lIryBnWeaKRT4',
    appId: '1:823410562720:android:d019eac660b704ac701bc5',
    messagingSenderId: '823410562720',
    projectId: 'myportfolio-9e2c5',
    storageBucket: 'myportfolio-9e2c5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxmW3ajb9DLLhH2YiVhnqgS1NtgmHR4rw',
    appId: '1:823410562720:ios:28bf68c1a0df862a701bc5',
    messagingSenderId: '823410562720',
    projectId: 'myportfolio-9e2c5',
    storageBucket: 'myportfolio-9e2c5.appspot.com',
    iosBundleId: 'com.example.myPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxmW3ajb9DLLhH2YiVhnqgS1NtgmHR4rw',
    appId: '1:823410562720:ios:28bf68c1a0df862a701bc5',
    messagingSenderId: '823410562720',
    projectId: 'myportfolio-9e2c5',
    storageBucket: 'myportfolio-9e2c5.appspot.com',
    iosBundleId: 'com.example.myPortfolio',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCmvcqt4JPwD6ffnKELAxps7eU-br9XfLI',
    appId: '1:823410562720:web:55f32d7c9f6855ff701bc5',
    messagingSenderId: '823410562720',
    projectId: 'myportfolio-9e2c5',
    authDomain: 'myportfolio-9e2c5.firebaseapp.com',
    storageBucket: 'myportfolio-9e2c5.appspot.com',
    measurementId: 'G-HR39JRR3QR',
  );

}