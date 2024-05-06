import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC3ohZpEanpbxTatzK9z1CiVzAQmnTRpH0",
            authDomain: "counterapp-11cb8.firebaseapp.com",
            projectId: "counterapp-11cb8",
            storageBucket: "counterapp-11cb8.appspot.com",
            messagingSenderId: "426738272305",
            appId: "1:426738272305:web:4a1bf338f6e7fafb95ed10"));
  } else {
    await Firebase.initializeApp();
  }
}
