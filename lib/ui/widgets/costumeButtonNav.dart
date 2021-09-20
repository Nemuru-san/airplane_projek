import 'package:airplane_projek/shared/thame.dart';
import 'package:flutter/material.dart';

class costumeButtonNav extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const costumeButtonNav({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isSelected ? kprimaryColor : kTransparent,
              borderRadius: BorderRadius.circular(18)),
        )
      ],
    );
  }
}
