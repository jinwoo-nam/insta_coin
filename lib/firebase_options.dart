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
    apiKey: 'AIzaSyCAatqiyi_LHIUewxllB76TlKCLjTNTALA',
    appId: '1:488601969370:web:3e102aa72d9b0f4287fbe3',
    messagingSenderId: '488601969370',
    projectId: 'insta-coin-83959',
    authDomain: 'insta-coin-83959.firebaseapp.com',
    storageBucket: 'insta-coin-83959.appspot.com',
    measurementId: 'G-5534BJSCJ0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB41MRsV4iYt9XGayA7Av7VflEn4UxdLLc',
    appId: '1:488601969370:android:cba2b78ef852934087fbe3',
    messagingSenderId: '488601969370',
    projectId: 'insta-coin-83959',
    storageBucket: 'insta-coin-83959.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcOVLqLVbI1XztIz4O24PRLXIV3NNskeo',
    appId: '1:488601969370:ios:2a324a2b3e998d2187fbe3',
    messagingSenderId: '488601969370',
    projectId: 'insta-coin-83959',
    storageBucket: 'insta-coin-83959.appspot.com',
    iosClientId: '488601969370-iapd72494kos5m84vm1hjenbgbcn895a.apps.googleusercontent.com',
    iosBundleId: 'kr.instapay.instaCoin',
  );
}
