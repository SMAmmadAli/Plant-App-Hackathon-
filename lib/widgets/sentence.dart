import 'package:flutter/material.dart';

import '../utils/color_constant.dart';

class Sentence extends StatelessWidget {
  final String SentenceText;
  const Sentence({super.key, required this.SentenceText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Text(
          SentenceText,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: MyColor.green),
        ),
      ),
    );
  }
}
