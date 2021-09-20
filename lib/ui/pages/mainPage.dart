import 'package:airplane_projek/ui/pages/homePage.dart';
import 'package:airplane_projek/ui/widgets/costumeButtonNav.dart';
import 'package:flutter/material.dart';
import '../../shared/thame.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return homePage();
    }

    Widget costumeButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: ktextColorWhite),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              costumeButtonNav(
                imageUrl: 'assets/home_nav1.png',
                isSelected: true,
              ),
              costumeButtonNav(
                imageUrl: 'assets/booking_nav.png',
              ),
              costumeButtonNav(
                imageUrl: 'assets/card_nav.png',
              ),
              costumeButtonNav(
                imageUrl: 'assets/setting_nav.png',
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kbgColor,
      body: Stack(
        children: [
          buildContent(),
          costumeButtonNavigation(),
        ],
      ),
    );
  }
}
