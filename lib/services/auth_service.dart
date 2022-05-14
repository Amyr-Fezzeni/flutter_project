import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> signIn(String email, String password) async {
    try {
      final userAuth = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      log(userAuth.toString());

      final User? user = FirebaseAuth.instance.currentUser;

      return user;
    } on Exception catch (e) {
      return null;
    }
  }

  static Future<User?> signUp(
      String name, String email, String password) async {
    try {
      final userAuth = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

        final User? user = FirebaseAuth.instance.currentUser;
      user!.updateDisplayName(name);
      return user;
    } on Exception catch (e) {
      return null;
    }
  }
}
