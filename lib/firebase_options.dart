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
    apiKey: 'AIzaSyDZ8vE7Noyu3etKrN9MEBiHkqv6SL4JuzI',
    appId: '1:717456539634:web:017fba1e1b4808561c356b',
    messagingSenderId: '717456539634',
    projectId: 'shopapp-f874d',
    authDomain: 'shopapp-f874d.firebaseapp.com',
    storageBucket: 'shopapp-f874d.appspot.com',
    measurementId: 'G-BZJ35QTPKR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABQSlg07ilzPpAKJ8qM3irvYk7TejVJK8',
    appId: '1:717456539634:android:3ba570a0e7aee9881c356b',
    messagingSenderId: '717456539634',
    projectId: 'shopapp-f874d',
    storageBucket: 'shopapp-f874d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjEPMPizNTmQxOZoRgSq5ycS0fcJGGLIU',
    appId: '1:717456539634:ios:8089c77236f94b7b1c356b',
    messagingSenderId: '717456539634',
    projectId: 'shopapp-f874d',
    storageBucket: 'shopapp-f874d.appspot.com',
    iosClientId: '717456539634-vjan4l70mtf2f69jppdn6cqtpbsm7jm1.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjEPMPizNTmQxOZoRgSq5ycS0fcJGGLIU',
    appId: '1:717456539634:ios:8089c77236f94b7b1c356b',
    messagingSenderId: '717456539634',
    projectId: 'shopapp-f874d',
    storageBucket: 'shopapp-f874d.appspot.com',
    iosClientId: '717456539634-vjan4l70mtf2f69jppdn6cqtpbsm7jm1.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopApp',
  );
}
