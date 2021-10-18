import 'package:airplane_projek/cubit/auth_cubit.dart';
import 'package:airplane_projek/ui/widgets/costumeButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/thame.dart';

class bonusPage extends StatelessWidget {
  const bonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              height: 211,
              width: 300,
              padding: EdgeInsets.all(defaultMargin),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/card_bg.png')),
                  boxShadow: [
                    BoxShadow(
                        color: kprimaryColor.withOpacity(0.5),
                        blurRadius: 50,
                        offset: Offset(0, 10))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 14, fontWeight: light),
                            ),
                            Text(
                              state.user.name,
                              style: whiteTextStyle.copyWith(
                                  fontSize: 20, fontWeight: medium),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/plane_icon.png'))),
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: light),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 41,
                  ),
                  Text(
                    'Balance',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 300.000.000',
                    style: whiteTextStyle.copyWith(
                      fontSize: 26,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget titleBonus() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return costumeButton(
          title: 'Start Fly NOW',
          margin: EdgeInsets.only(top: 50),
          width: 220,
          onPressed: () {
            // Navigator.pushNamed(context, '/main');
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
          });
    }

    return Scaffold(
      backgroundColor: kbgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            titleBonus(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
