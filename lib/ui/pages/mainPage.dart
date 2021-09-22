import 'package:airplane_projek/cubit/page_cubit.dart';
import 'package:airplane_projek/ui/pages/homePage.dart';
import 'package:airplane_projek/ui/pages/settingPage.dart';
import 'package:airplane_projek/ui/pages/transactionPage.dart';
import 'package:airplane_projek/ui/pages/walletPage.dart';
import 'package:airplane_projek/ui/widgets/costumeButtonNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/thame.dart';

class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return homePage();
        case 1:
          return transactionPage();
        case 2:
          return walletPage();
        case 3:
          return settingPage();
        default:
          return homePage();
      }
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
                index: 0,
                imageUrl: 'assets/home_nav1.png',
              ),
              costumeButtonNav(
                index: 1,
                imageUrl: 'assets/booking_nav.png',
              ),
              costumeButtonNav(
                index: 2,
                imageUrl: 'assets/card_nav.png',
              ),
              costumeButtonNav(
                index: 3,
                imageUrl: 'assets/setting_nav.png',
              )
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kbgColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              costumeButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
