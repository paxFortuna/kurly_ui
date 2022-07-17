import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class CircleContainer extends StatelessWidget {
  final String? iconPath;

  const CircleContainer({
    Key? key,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.5),
          color: kPrimaryColor.withOpacity(0.6)),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image.asset(
          iconPath ?? "assets/icons/star.png",
          width: 23,
          height: 23,
          fit: BoxFit.cover,
          color: Colors.white,
        ),
      ),
    );
  }
}