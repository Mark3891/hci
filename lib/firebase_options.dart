import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCT6EB4uJi7QdKKLAUe_uRS_8js46djnJ4',
    appId: '1:163464121541:web:b76463a2388f73523ab4ac',
    messagingSenderId: '163464121541',
    projectId: 'hci-traffic-light',
    authDomain: 'hci-traffic-light.firebaseapp.com',
    storageBucket: 'hci-traffic-light.appspot.com',
    measurementId: 'G-FC95RQS94B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAM6wO_psq7OcUPlM4GeJwUavTHQ4SIB8g',
    appId: '1:163464121541:android:2d20c6c3567d0d833ab4ac',
    messagingSenderId: '163464121541',
    projectId: 'hci-traffic-light',
    storageBucket: 'hci-traffic-light.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtVUuDK735gfFpxUDaaYfwntqsrP3XKsA',
    appId: '1:163464121541:ios:03fc7e249abfe3db3ab4ac',
    messagingSenderId: '163464121541',
    projectId: 'hci-traffic-light',
    storageBucket: 'hci-traffic-light.appspot.com',
    iosBundleId: 'com.example.hci',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtVUuDK735gfFpxUDaaYfwntqsrP3XKsA',
    appId: '1:163464121541:ios:03fc7e249abfe3db3ab4ac',
    messagingSenderId: '163464121541',
    projectId: 'hci-traffic-light',
    storageBucket: 'hci-traffic-light.appspot.com',
    iosBundleId: 'com.example.hci',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCT6EB4uJi7QdKKLAUe_uRS_8js46djnJ4',
    appId: '1:163464121541:web:8d72576c186750c43ab4ac',
    messagingSenderId: '163464121541',
    projectId: 'hci-traffic-light',
    authDomain: 'hci-traffic-light.firebaseapp.com',
    storageBucket: 'hci-traffic-light.appspot.com',
    measurementId: 'G-CPXKJ244QL',
  );

}