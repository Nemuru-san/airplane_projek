import 'package:airplane_projek/ui/widgets/seatItem.dart';
import 'package:flutter/material.dart';
import '../../shared/thame.dart';

class chooseSeatPage extends StatelessWidget {
  const chooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            // available
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/available_icon.png'),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            // selected
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/selected_icon.png'),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            // unavailable
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/unavailable_icon.png'),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            )
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: ktextColorWhite,
        ),
        child: Column(
          children: [
            // indikator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // seat 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  seatItem(
                    status: 2,
                  ),
                  seatItem(
                    status: 2,
                  ),

                  // tengah
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  seatItem(
                    status: 0,
                  ),
                  seatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // seat 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  seatItem(
                    status: 0,
                  ),
                  seatItem(
                    status: 0,
                  ),

                  // tengah
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  seatItem(
                    status: 0,
                  ),
                  seatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // seat 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  seatItem(
                    status: 1,
                  ),
                  seatItem(
                    status: 1,
                  ),

                  // tengah
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  seatItem(
                    status: 0,
                  ),
                  seatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // seat 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  seatItem(
                    status: 0,
                  ),
                  seatItem(
                    status: 2,
                  ),

                  // tengah
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  seatItem(
                    status: 0,
                  ),
                  seatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // seat 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  seatItem(
                    status: 0,
                  ),
                  seatItem(
                    status: 0,
                  ),

                  // tengah
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                  seatItem(
                    status: 2,
                  ),
                  seatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // your seat
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kbgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
        ],
      ),
    );
  }
}
