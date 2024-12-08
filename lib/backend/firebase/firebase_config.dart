import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC1WUL4OPHniIiBoqt3-B4C18i51GgljZA",
            authDomain: "hackathoane-puternice-ujwwjy.firebaseapp.com",
            projectId: "hackathoane-puternice-ujwwjy",
            storageBucket: "hackathoane-puternice-ujwwjy.firebasestorage.app",
            messagingSenderId: "360791598034",
            appId: "1:360791598034:web:bb506b9c9afbfb774f5e0b"));
  } else {
    await Firebase.initializeApp();
  }
}
