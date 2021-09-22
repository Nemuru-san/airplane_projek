import 'package:airplane_projek/cubit/page_cubit.dart';
import 'package:airplane_projek/shared/thame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class costumeButtonNav extends StatelessWidget {
  final int index;
  final String imageUrl;

  const costumeButtonNav({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kprimaryColor
                : ktextColorGrey,
          ),
          // Container(
          //   width: 24,
          //   height: 24,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(image: AssetImage(imageUrl))),
          // ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? kprimaryColor
                    : kTransparent,
                borderRadius: BorderRadius.circular(18)),
          )
        ],
      ),
    );
  }
}
