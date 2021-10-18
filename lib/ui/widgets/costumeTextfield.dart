import 'package:flutter/material.dart';
import '../../shared/thame.dart';

class costumeTextfield extends StatelessWidget {
  final String title;
  final String placeholder;
  final bool obsecureText;
  final TextEditingController controller;

  const costumeTextfield({
    Key? key,
    required this.title,
    required this.placeholder,
    this.obsecureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: ktextColorBlack,
            obscureText: obsecureText,
            controller: controller,
            decoration: InputDecoration(
                hintText: placeholder,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kprimaryColor))),
          )
        ],
      ),
    );
  }
}
