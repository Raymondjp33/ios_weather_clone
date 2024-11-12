import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'firebase_options.dart' as firebase_options;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseOptions firebaseOptions =
      firebase_options.DefaultFirebaseOptions.currentPlatform;
  await initializeApp(
    firebaseOptions: firebaseOptions,
    testing: false,
  );

  runApp(const App());
}

// firebase app needs to be initialized before this
// is called

Future<FirebaseApp?> initializeApp({
  required FirebaseOptions firebaseOptions,
  required bool testing,
}) async {
  try {
    var app = await Firebase.initializeApp(
      options: firebaseOptions,
    );
    return app;
    // this error only occurs when running individual tests instead of
    // running the tests through the ci test runner.  It's a non-issue in this case,
    // so it can silently fail.
  } on FirebaseAuthException catch (e) {
    debugPrint('When trying to start firebase, got error: $e');
    if (!testing) {
      rethrow;
    }
  }
  return null;
}
