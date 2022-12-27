import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDVlpwNvvTgJ6oHAIazmVfYcI8scH7ibPE",
            authDomain: "withcenter-project.firebaseapp.com",
            projectId: "withcenter-project",
            storageBucket: "withcenter-project.appspot.com",
            messagingSenderId: "1036885997348",
            appId: "1:1036885997348:web:0f1bc7f7ccc8db460725b1"));
  } else {
    await Firebase.initializeApp();
  }
}
