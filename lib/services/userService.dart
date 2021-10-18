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

  Future<userModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReferance.doc(id).get();
      return userModel(
        id: id,
        email: snapshot['email'],
        name: snapshot['name'],
        hobby: snapshot['hobby'],
        balance: snapshot['balance'],
      );
    } catch (e) {
      throw e;
    }
  }
}
