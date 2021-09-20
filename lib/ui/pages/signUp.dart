import 'package:airplane_projek/ui/widgets/costumeButton.dart';
import 'package:airplane_projek/ui/widgets/costumeTextfield.dart';
import 'package:flutter/material.dart';
import '../../shared/thame.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join US and Get\nYour Next Journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return costumeTextfield(
          title: 'FULL NAME',
          placeholder: 'Input your full name',
        );
      }

      Widget emailInput() {
        return costumeTextfield(
          title: 'EMAIL ADDRESS',
          placeholder: 'Input your email address',
        );
      }

      Widget passwordInput() {
        return costumeTextfield(
          title: 'PASSWORD',
          placeholder: 'Input your password',
          obsecureText: true,
        );
      }

      Widget hobbyInput() {
        return costumeTextfield(
          title: 'HOBBY',
          placeholder: 'Input your Hobby',
        );
      }

      Widget submitButton() {
        return costumeButton(
          title: 'GET STARTED !!',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: ktextColorWhite,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 70),
        child: Text(
          'Tearms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kbgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
