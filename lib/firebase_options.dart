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
    apiKey: 'AIzaSyBDNAMh-SzKBiZ-FdGYCyL916Mpm99jvB4',
    appId: '1:992184554831:web:ad12c2da109d058e7e613a',
    messagingSenderId: '992184554831',
    projectId: 'onlineshop-delivery',
    authDomain: 'onlineshop-delivery.firebaseapp.com',
    databaseURL: 'https://onlineshop-delivery-default-rtdb.firebaseio.com',
    storageBucket: 'onlineshop-delivery.appspot.com',
    measurementId: 'G-2H7K52JQ2D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCV7CVt2K2mJTO10R2tU1DrqQQ6aQV5jCs',
    appId: '1:992184554831:android:c4389c4dc4e2ff8f7e613a',
    messagingSenderId: '992184554831',
    projectId: 'onlineshop-delivery',
    databaseURL: 'https://onlineshop-delivery-default-rtdb.firebaseio.com',
    storageBucket: 'onlineshop-delivery.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCr-VfyV9cz5DQim1KyxepcsoYQuw9WSo4',
    appId: '1:992184554831:ios:c0cc89ee84c171817e613a',
    messagingSenderId: '992184554831',
    projectId: 'onlineshop-delivery',
    databaseURL: 'https://onlineshop-delivery-default-rtdb.firebaseio.com',
    storageBucket: 'onlineshop-delivery.appspot.com',
    iosClientId: '992184554831-cvtsbm3hd625mfabddig2p9fpkjqqckb.apps.googleusercontent.com',
    iosBundleId: 'com.example.onlineshopDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCr-VfyV9cz5DQim1KyxepcsoYQuw9WSo4',
    appId: '1:992184554831:ios:c0cc89ee84c171817e613a',
    messagingSenderId: '992184554831',
    projectId: 'onlineshop-delivery',
    databaseURL: 'https://onlineshop-delivery-default-rtdb.firebaseio.com',
    storageBucket: 'onlineshop-delivery.appspot.com',
    iosClientId: '992184554831-cvtsbm3hd625mfabddig2p9fpkjqqckb.apps.googleusercontent.com',
    iosBundleId: 'com.example.onlineshopDelivery',
  );
}
