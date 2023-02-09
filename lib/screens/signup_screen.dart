import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/screens/login_screen.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/utils/image_constant.dart';
import 'package:hackathon/utils/text_constant.dart';
import 'package:hackathon/widgets/buttons.dart';
import 'package:hackathon/widgets/sentence.dart';
import 'package:hackathon/widgets/text.dart';
import 'package:hackathon/widgets/textfield.dart';
import 'dart:html';
import '../widgets/have_account_text.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  SignUpPage({super.key});

  signup(context) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.text, password: password.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
        return const AlertDialog(
          title: Text("The password provided is too weak."),
          actions: [Text("Skip")],
        );
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
        return const AlertDialog(
          title: Text("The account already exists for that email."),
          actions: [Text("Skip")],
        );
      }
    } catch (e) {
      print(e);
    }
  }

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
          MyTextField(
            text: "Email",
            obscureText: false,
            myController: email,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            text: "Password",
            obscureText: true,
            myController: password,
          ),
          const SizedBox(
            height: 30,
          ),
          MyButtons(
              buttonText: MyText.signUp,
              onTapFunction: () {
                signup(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ProductScreen()));
              }),
          const SizedBox(
            height: 5,
          ),
          HaveAccountText(
              text1: "Already have account",
              text2: "Sign in",
              onTapFunction: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              })
        ],
      ),
    );
  }
}
