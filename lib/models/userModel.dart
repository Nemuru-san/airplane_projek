import 'package:equatable/equatable.dart';

class userModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobby;
  final int balance;

  userModel({
    required this.id,
    required this.email,
    required this.name,
    this.hobby = '',
    this.balance = 0,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        email,
        name,
        hobby,
        balance,
      ];
}
