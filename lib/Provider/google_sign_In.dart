import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _User;

  GoogleSignInAccount get user => _User!;
  Future GoogleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _User = googleUser;
    final googleAuth = await googleUser.authentication;

    final Credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(Credential);
    notifyListeners();
  }
}
