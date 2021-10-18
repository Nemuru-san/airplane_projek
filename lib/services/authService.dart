import 'package:airplane_projek/models/userModel.dart';
import 'package:airplane_projek/services/userService.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<userModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      userModel user = userModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 666000000);

      await userService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
