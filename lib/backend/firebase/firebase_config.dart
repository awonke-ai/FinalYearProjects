import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCnEY8VGF5SFSpGg_XnX-jHah9uIbv3J3s",
            authDomain: "krispy-box-mobile-app.firebaseapp.com",
            projectId: "krispy-box-mobile-app",
            storageBucket: "krispy-box-mobile-app.appspot.com",
            messagingSenderId: "334866256069",
            appId: "1:334866256069:web:722030f502a8aeec2620ac",
            measurementId: "G-FCNE5B71Y6"));
  } else {
    await Firebase.initializeApp();
  }
}
