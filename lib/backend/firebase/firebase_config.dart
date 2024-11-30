import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAC4I9tZACQnhGF2-zkVZpVVWytoLP5zrg",
            authDomain: "umove-c5017.firebaseapp.com",
            projectId: "umove-c5017",
            storageBucket: "umove-c5017.firebasestorage.app",
            messagingSenderId: "36490802378",
            appId: "1:36490802378:web:fec9fcb09b934b32fe7033",
            measurementId: "G-74SM9ZMPNR"));
  } else {
    await Firebase.initializeApp();
  }
}
