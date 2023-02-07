import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class HaveAccountText extends StatelessWidget {
  final String text1;
  final String text2;
  final onTapFunction;
  const HaveAccountText(
      {super.key,
      required this.text1,
      required this.text2,
      this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: MyColor.dartGreen,
          ),
        ),
        InkWell(
          onTap: () {
            onTapFunction();
          },
          child: Text(
            text2,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: MyColor.green,
            ),
          ),
        ),
      ],
    );
  }
}
