import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZOvwswLntjnnKD1IkS3HDj8qkMgP-G7E",
            authDomain: "pumbapp-5cf99.firebaseapp.com",
            projectId: "pumbapp-5cf99",
            storageBucket: "pumbapp-5cf99.appspot.com",
            messagingSenderId: "952975258311",
            appId: "1:952975258311:web:fd8aecdb1132883dd344e2"));
  } else {
    await Firebase.initializeApp();
  }
}
