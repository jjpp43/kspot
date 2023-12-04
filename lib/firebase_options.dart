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
    apiKey: 'AIzaSyB0sRUhqsLqnK4WRO9hf8nR4Y245s1lUtc',
    appId: '1:1037409435001:web:dcc3e7dfd13570121643a8',
    messagingSenderId: '1037409435001',
    projectId: 'k-spot-project',
    authDomain: 'k-spot-project.firebaseapp.com',
    storageBucket: 'k-spot-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTrSHqNtnfAjRGtRAGO0nsvyjmbOfY6d8',
    appId: '1:1037409435001:android:849afd53fe4f3fb31643a8',
    messagingSenderId: '1037409435001',
    projectId: 'k-spot-project',
    storageBucket: 'k-spot-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSdEXaoZclc3rn6mnGl7mSY3rEB_XbDU4',
    appId: '1:1037409435001:ios:00ec5cb2124164b51643a8',
    messagingSenderId: '1037409435001',
    projectId: 'k-spot-project',
    storageBucket: 'k-spot-project.appspot.com',
    iosClientId: '1037409435001-482jlbdco7c0rc5qgkvr2jnlb0nuln3g.apps.googleusercontent.com',
    iosBundleId: 'com.example.kspot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSdEXaoZclc3rn6mnGl7mSY3rEB_XbDU4',
    appId: '1:1037409435001:ios:43251a29795c28701643a8',
    messagingSenderId: '1037409435001',
    projectId: 'k-spot-project',
    storageBucket: 'k-spot-project.appspot.com',
    iosClientId: '1037409435001-lr31sk7g30ptml6qfiq7v6bio2ugd4m4.apps.googleusercontent.com',
    iosBundleId: 'com.example.kspot.RunnerTests',
  );
}
