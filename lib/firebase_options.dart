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
    apiKey: 'AIzaSyCPSgqN34r8wdjUf0tGKSSduzHmQ9fpbqk',
    appId: '1:298706804951:web:7cf3175df3fd27adc71092',
    messagingSenderId: '298706804951',
    projectId: 'plant-app-hackathon',
    authDomain: 'plant-app-hackathon.firebaseapp.com',
    storageBucket: 'plant-app-hackathon.appspot.com',
    measurementId: 'G-SQGV9TLQXG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA39ZyIIvmmk3tjpZpQvwVm5s8241ZePBk',
    appId: '1:298706804951:android:c7626f28f721541ac71092',
    messagingSenderId: '298706804951',
    projectId: 'plant-app-hackathon',
    storageBucket: 'plant-app-hackathon.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFWlM6pi7Ksduw8hP6w78gFd_OkYinumQ',
    appId: '1:298706804951:ios:ea4b0b2013bea3e3c71092',
    messagingSenderId: '298706804951',
    projectId: 'plant-app-hackathon',
    storageBucket: 'plant-app-hackathon.appspot.com',
    iosClientId: '298706804951-015j4su27v5telg4v5bmonfln5a1nklc.apps.googleusercontent.com',
    iosBundleId: 'com.example.hackathon',
  );
}