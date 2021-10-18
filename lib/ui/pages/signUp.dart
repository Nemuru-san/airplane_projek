import 'package:airplane_projek/cubit/auth_cubit.dart';
import 'package:airplane_projek/ui/widgets/costumeButton.dart';
import 'package:airplane_projek/ui/widgets/costumeTextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/thame.dart';

class signUpPage extends StatelessWidget {
  signUpPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

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
          controller: nameController,
        );
      }

      Widget emailInput() {
        return costumeTextfield(
          title: 'EMAIL ADDRESS',
          placeholder: 'Input your email address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return costumeTextfield(
          title: 'PASSWORD',
          placeholder: 'Input your password',
          obsecureText: true,
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return costumeTextfield(
          title: 'HOBBY',
          placeholder: 'Input your Hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: ktextColorRed,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return costumeButton(
              title: 'GET STARTED !!',
              onPressed: () {
                context.read<AuthCubit>().signUp(
                    email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                    hobby: hobbyController.text);
              },
            );
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
