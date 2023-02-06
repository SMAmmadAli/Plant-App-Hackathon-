import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final bool ObscureText;
  const MyTextField({super.key, required this.text, required this.ObscureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                text,
                style: TextStyle(
                    color: MyColor.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: MyColor.green, width: 1)),
          child: TextField(
            obscureText: ObscureText,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Masukkan Password",
                hintStyle: TextStyle(
                    color: MyColor.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: MyColor.green,
                )),
          ),
        )
      ],
    );
  }
}
