import 'package:airplane_projek/ui/pages/homePage.dart';
import 'package:airplane_projek/ui/widgets/costumeButton.dart';
import 'package:flutter/material.dart';
import '../../shared/thame.dart';

class successCheckout extends StatelessWidget {
  const successCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 150,
            margin: EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/success.png'),
              ),
            ),
          ),
          Text(
            'WELL DONE, BOOKED',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Are you ready to explore the new\nworld of experiences?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
          costumeButton(
            title: 'My Booking',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            },
            width: 220,
            margin: EdgeInsets.only(top: 50),
          )
        ],
      )),
    );
  }
}
