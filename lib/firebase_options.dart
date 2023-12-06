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
    apiKey: 'AIzaSyAlYLWIA7ASiiTlJ_e87cysnydAfS0rQKA',
    appId: '1:760850652808:web:e6b479c157723bdc37c93d',
    messagingSenderId: '760850652808',
    projectId: 'aquila-pdfs',
    authDomain: 'aquila-pdfs.firebaseapp.com',
    storageBucket: 'aquila-pdfs.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPzzNbLGIP6jmxL1MLp_k-17tOWpBUi6o',
    appId: '1:760850652808:android:54a22981a181f7e337c93d',
    messagingSenderId: '760850652808',
    projectId: 'aquila-pdfs',
    storageBucket: 'aquila-pdfs.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcKD0Fp4aj-JfDFzHFzu_o-DrRWWseDFk',
    appId: '1:760850652808:ios:4d76a0841b0a40a837c93d',
    messagingSenderId: '760850652808',
    projectId: 'aquila-pdfs',
    storageBucket: 'aquila-pdfs.appspot.com',
    iosBundleId: 'com.example.pdfs4thGrade',
  );
}