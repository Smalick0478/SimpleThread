import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // Initialize Firebase
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //login
  Future<UserCredential> signInWithEmailPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //regisrter user

  //logout

  //error handelling
}
