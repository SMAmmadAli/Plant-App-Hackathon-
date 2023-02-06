import 'package:flutter/material.dart';
import 'package:hackathon/screens/login_screen.dart';
import 'package:hackathon/utils/image_constant.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/utils/text_constant.dart';
import 'package:hackathon/widgets/buttons.dart';
import 'package:hackathon/widgets/sentence.dart';
import 'package:hackathon/widgets/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 1,
            child: Image(
              image: AssetImage(
                MyImage.homeImage,
              ),
              width: MediaQuery.of(context).size.height * 1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          HomeText(text: MyText.homeText1),
          HomeText(text: MyText.homeText2),
          Sentence(SentenceText: MyText.homeText3),
          const SizedBox(
            height: 20,
          ),
          MyButtons(
            buttonText: MyText.buttonText,
            onTapFunction: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
