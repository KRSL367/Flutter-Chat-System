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
    apiKey: 'AIzaSyCXs7dJ32eQX8tW9q4Pk-SBqBH5rGGMRMY',
    appId: '1:571259629968:web:3a8e8718c5138ccadb8315',
    messagingSenderId: '571259629968',
    projectId: 'chatappdemo-e4efd',
    authDomain: 'chatappdemo-e4efd.firebaseapp.com',
    storageBucket: 'chatappdemo-e4efd.appspot.com',
    measurementId: 'G-YJGDP3TNEG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpPylHMfWCHxgFfTt78H-7ZU28uvGgF7k',
    appId: '1:571259629968:android:29de5dffcb57d937db8315',
    messagingSenderId: '571259629968',
    projectId: 'chatappdemo-e4efd',
    storageBucket: 'chatappdemo-e4efd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6iKjohVXblL0-uLJmjo-tRYnZMZ8Pip4',
    appId: '1:571259629968:ios:b6d01e71fa993e02db8315',
    messagingSenderId: '571259629968',
    projectId: 'chatappdemo-e4efd',
    storageBucket: 'chatappdemo-e4efd.appspot.com',
    iosBundleId: 'com.example.chatSystemFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6iKjohVXblL0-uLJmjo-tRYnZMZ8Pip4',
    appId: '1:571259629968:ios:dfec461f30fe6dfedb8315',
    messagingSenderId: '571259629968',
    projectId: 'chatappdemo-e4efd',
    storageBucket: 'chatappdemo-e4efd.appspot.com',
    iosBundleId: 'com.example.chatSystemFirebase.RunnerTests',
  );
}