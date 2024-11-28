import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBMC40aCo6wCKPDTKR14TAFA6jgCjUzzFA",
            authDomain: "m-a-e-math-craft-newxis.firebaseapp.com",
            projectId: "m-a-e-math-craft-newxis",
            storageBucket: "m-a-e-math-craft-newxis.appspot.com",
            messagingSenderId: "1088655891204",
            appId: "1:1088655891204:web:0c29ac794c56eb61494e51"));
  } else {
    await Firebase.initializeApp();
  }
}
