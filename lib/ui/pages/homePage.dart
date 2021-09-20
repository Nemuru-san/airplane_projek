import 'package:airplane_projek/ui/widgets/destinationCard.dart';
import 'package:airplane_projek/ui/widgets/destinationTile.dart';
import 'package:flutter/material.dart';
import '../../shared/thame.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nMr. Satan 666',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              destinationCard(
                titleDestination: 'Kali Ciliwung',
                subtitleDestination: 'Tangerang',
                imgUrl: 'assets/img_destination1.png',
                rating: 4.6,
              ),
              destinationCard(
                titleDestination: 'White House',
                subtitleDestination: 'Tangerang',
                imgUrl: 'assets/img_destination2.png',
                rating: 4.6,
              ),
              destinationCard(
                titleDestination: 'Menarrra',
                subtitleDestination: 'Spain',
                imgUrl: 'assets/img_destination3.png',
                rating: 4.6,
              ),
              destinationCard(
                titleDestination: 'Hill Heyo',
                subtitleDestination: 'Monaco',
                imgUrl: 'assets/img_destination4.png',
                rating: 4.6,
              ),
              destinationCard(
                titleDestination: 'Payung Teduh',
                subtitleDestination: 'Singapore',
                imgUrl: 'assets/img_destination6.png',
                rating: 4.6,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultMargin,
          bottom: 120,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NEW THIS YEAR',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            destinationTile(
              name: 'Danau Daratan',
              city: 'Singarajah',
              imgUrl: 'assets/img_destination9.png',
              rating: 4.5,
            ),
            destinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imgUrl: 'assets/img_destination8.png',
              rating: 4.5,
            ),
            destinationTile(
              name: 'Tokyo Tower',
              city: 'Japan',
              imgUrl: 'assets/img_destination10.png',
              rating: 4.5,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestination(),
      ],
    );
  }
}
