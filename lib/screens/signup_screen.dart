import 'package:flutter/material.dart';
import 'package:hackathon/screens/product_screen.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/utils/image_constant.dart';
import 'package:hackathon/utils/text_constant.dart';
import 'package:hackathon/widgets/buttons.dart';
import 'package:hackathon/widgets/sentence.dart';
import 'package:hackathon/widgets/text.dart';
import 'package:hackathon/widgets/textfield.dart';

class SignUp_Page extends StatelessWidget {
  const SignUp_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.white,
        leading: Icon(
          Icons.arrow_circle_left_outlined,
          color: MyColor.green,
          size: 35,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage(MyImage.tree),
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  MyText.treeText,
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: MyColor.blue),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          HomeText(text: MyText.signUp),
          const SizedBox(
            height: 5,
          ),
          Sentence(SentenceText: MyText.loginSentence),
          const SizedBox(
            height: 30,
          ),
          const MyTextField(
            text: "NISN",
            ObscureText: false,
          ),
          const SizedBox(
            height: 20,
          ),
          const MyTextField(
            text: "NISN",
            ObscureText: true,
          ),
          const SizedBox(
            height: 30,
          ),
          MyButtons(
              buttonText: MyText.buttonText2,
              onTapFunction: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductScreen()));
              })
        ],
      ),
    );
  }
}
