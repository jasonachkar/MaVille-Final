import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA6nv5qy2n5kluh78gjtWeCL-CTTzOGCmI",
            authDomain: "communi-link-ma-v-ille2-0dtppg.firebaseapp.com",
            projectId: "communi-link-ma-v-ille2-0dtppg",
            storageBucket: "communi-link-ma-v-ille2-0dtppg.appspot.com",
            messagingSenderId: "521297678947",
            appId: "1:521297678947:web:c8e0c13a21f475070f9e56"));
  } else {
    await Firebase.initializeApp();
  }
}
