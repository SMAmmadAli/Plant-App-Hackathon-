import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/widgets/buttons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColor.dartGreen,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: MyColor.white,
              )),
        ],
      ),
      body: Drawer(
        backgroundColor: MyColor.dartGreen,
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                CupertinoIcons.bag,
                color: MyColor.white,
                size: 35,
              ),
              title: Text(
                "Shop",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: MyColor.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.tree,
                color: MyColor.white,
                size: 35,
              ),
              title: Text(
                "Plant Care",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: MyColor.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.person,
                color: MyColor.white,
                size: 35,
              ),
              title: Text(
                "My Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: MyColor.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bus,
                color: MyColor.white,
                size: 35,
              ),
              title: Text(
                "Track Order",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: MyColor.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Get the dirt.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: MyColor.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MyButtons(
              buttonText: "Enter your Email",
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "FAQ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: MyColor.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "About US",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: MyColor.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: MyColor.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
