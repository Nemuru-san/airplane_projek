import 'package:airplane_projek/models/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class userService {
  CollectionReference _userReferance =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(userModel user) async {
    try {
      _userReferance.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance
      });
    } catch (e) {
      throw e;
    }
  }
}
