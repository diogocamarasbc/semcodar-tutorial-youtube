import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAgiihTwx3Zg5RQbCW-ymYVNaqBHfuU1lg",
            authDomain: "semcodar-tutorial-flutte-3eedc.firebaseapp.com",
            projectId: "semcodar-tutorial-flutte-3eedc",
            storageBucket: "semcodar-tutorial-flutte-3eedc.appspot.com",
            messagingSenderId: "981742112540",
            appId: "1:981742112540:web:6ea0d9fb4c6269525574d9"));
  } else {
    await Firebase.initializeApp();
  }
}
