import 'package:flutter/material.dart';
import 'package:hackathon/utils/color_constant.dart';

class MyButtons extends StatelessWidget {
  final String buttonText;
  final onTapFunction;
  const MyButtons({super.key, required this.buttonText, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTapFunction();
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: MyColor.white, width: 1),
            color: MyColor.green,
            borderRadius: BorderRadius.circular(30)),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 0.1,
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
              color: MyColor.white, fontSize: 18, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
