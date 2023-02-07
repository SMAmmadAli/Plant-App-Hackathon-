import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class ListViewText extends StatelessWidget {
  final String text;
  const ListViewText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        child: Text(
          text,
          style: TextStyle(
              color: MyColor.black, fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
