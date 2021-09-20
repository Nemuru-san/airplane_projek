import 'package:flutter/material.dart';
import '../../shared/thame.dart';

class bookingDetailItems extends StatelessWidget {
  final String title;
  final String textValue;
  final Color valueColor;

  const bookingDetailItems({
    Key? key,
    required this.title,
    required this.textValue,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/checklist_icon.png'),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            textValue,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
