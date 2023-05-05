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
    apiKey: 'AIzaSyAzj9zbfjFLANS_cIdF1p8Pz3skPSqDGTo',
    appId: '1:58549264953:web:d832a86380f9a7bf0463e8',
    messagingSenderId: '58549264953',
    projectId: 'my-first-project-c8037',
    authDomain: 'my-first-project-c8037.firebaseapp.com',
    storageBucket: 'my-first-project-c8037.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyALr9jzhbIRhEcpcBbbGddch-3nzxlJzYA',
    appId: '1:58549264953:android:e4bd7ffbeb78d3820463e8',
    messagingSenderId: '58549264953',
    projectId: 'my-first-project-c8037',
    storageBucket: 'my-first-project-c8037.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyVYekFEUbrBjx6rx1rw6oaTXlsvZIqB4',
    appId: '1:58549264953:ios:7c3542956070495a0463e8',
    messagingSenderId: '58549264953',
    projectId: 'my-first-project-c8037',
    storageBucket: 'my-first-project-c8037.appspot.com',
    iosClientId: '58549264953-8sic1ihtsh2njiaanr4odp5arassu6vc.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyVYekFEUbrBjx6rx1rw6oaTXlsvZIqB4',
    appId: '1:58549264953:ios:7c3542956070495a0463e8',
    messagingSenderId: '58549264953',
    projectId: 'my-first-project-c8037',
    storageBucket: 'my-first-project-c8037.appspot.com',
    iosClientId: '58549264953-8sic1ihtsh2njiaanr4odp5arassu6vc.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterChatApp',
  );
}