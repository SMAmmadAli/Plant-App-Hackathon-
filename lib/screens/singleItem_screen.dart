import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/data.dart';
import 'package:hackathon/utils/color_constant.dart';

import '../utils/image_constant.dart';
import '../widgets/drawer.dart';

class SingleItemScreen extends StatelessWidget {
  const SingleItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.white,
        leading: Image(image: AssetImage(MyImage.tree)),
        title: Text(
          'Plantify',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              letterSpacing: 3,
              color: MyColor.blue),
        ),
        actions: [
          Icon(
            CupertinoIcons.bell,
            color: MyColor.blue,
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyDrawer()));
              },
              icon: Icon(
                CupertinoIcons.line_horizontal_3,
                color: MyColor.blue,
              )),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.height * 1,
            height: MediaQuery.of(context).size.width * 0.6,
            color: MyColor.green,
            child: Stack(
              children: [
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 160.0, top: 30),
                  child: Image(image: AssetImage(MyImage.img_1)),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Air Purifier",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                letterSpacing: 3,
                                color: MyColor.blue),
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              color: MyColor.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: MyColor.blue,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: MyColor.blue),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Peperomia",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            letterSpacing: 3,
                            color: MyColor.blue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "PRICE",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: 3,
                            color: MyColor.blue),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "\$420",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            letterSpacing: 3,
                            color: MyColor.blue),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "SIZE",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: 3,
                            color: MyColor.blue),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "5\"h",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            letterSpacing: 3,
                            color: MyColor.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
