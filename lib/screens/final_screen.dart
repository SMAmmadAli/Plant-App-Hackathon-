import 'package:flutter/material.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/utils/image_constant.dart';
import 'package:hackathon/widgets/buttons.dart';

import '../data/data.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: MyColor.green,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: MyColor.green,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Order",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: MyColor.green),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Received ",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: MyColor.green),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Order ID : #293092309",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: MyColor.black),
          ),
          const SizedBox(
            height: 50,
          ),
          Image(
            image: AssetImage(MyImage.tree),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(child: MyButtons(buttonText: "KIRIM"))
        ],
      ),
    );
  }
}
