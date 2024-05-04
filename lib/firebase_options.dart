// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBawHFH7Si6hfitfnVTYhN0hGJ0_4AMSBM',
    appId: '1:55780268682:android:77f68e2f9e1ea2b065eb73',
    messagingSenderId: '55780268682',
    projectId: 'tic-tac-toe-ef691',
    storageBucket: 'tic-tac-toe-ef691.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCv-beLFplr9qjjylS0kayjcY1cRErNFsw',
    appId: '1:55780268682:ios:6b3dd650ed62fa7365eb73',
    messagingSenderId: '55780268682',
    projectId: 'tic-tac-toe-ef691',
    storageBucket: 'tic-tac-toe-ef691.appspot.com',
    iosBundleId: 'com.example.lolxnTicTacToe',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDrU5UHqn1txmzL4Ho0CqrwhASJ_qH_Z9k',
    appId: '1:55780268682:web:873619707789693e65eb73',
    messagingSenderId: '55780268682',
    projectId: 'tic-tac-toe-ef691',
    authDomain: 'tic-tac-toe-ef691.firebaseapp.com',
    storageBucket: 'tic-tac-toe-ef691.appspot.com',
    measurementId: 'G-0HNZ6X5FKJ',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCv-beLFplr9qjjylS0kayjcY1cRErNFsw',
    appId: '1:55780268682:ios:6b3dd650ed62fa7365eb73',
    messagingSenderId: '55780268682',
    projectId: 'tic-tac-toe-ef691',
    storageBucket: 'tic-tac-toe-ef691.appspot.com',
    iosBundleId: 'com.example.lolxnTicTacToe',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDrU5UHqn1txmzL4Ho0CqrwhASJ_qH_Z9k',
    appId: '1:55780268682:web:cfb5a9817a62425c65eb73',
    messagingSenderId: '55780268682',
    projectId: 'tic-tac-toe-ef691',
    authDomain: 'tic-tac-toe-ef691.firebaseapp.com',
    storageBucket: 'tic-tac-toe-ef691.appspot.com',
    measurementId: 'G-CFSET55S7Z',
  );
}