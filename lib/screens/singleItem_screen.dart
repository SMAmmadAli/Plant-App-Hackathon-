import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/data.dart';
import 'package:hackathon/utils/color_constant.dart';

import '../utils/image_constant.dart';
import 'addtocart.dart';
import 'drawer.dart';

class SingleItemScreen extends StatefulWidget {
  const SingleItemScreen({super.key});

  @override
  State<SingleItemScreen> createState() => _SingleItemScreenState();
}

class _SingleItemScreenState extends State<SingleItemScreen> {
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
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddToCart()));
              },
              icon: Icon(
                CupertinoIcons.bell,
                color: MyColor.blue,
              )),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (Map i in addItem)
              Container(
                width: MediaQuery.of(context).size.height * 1,
                height: MediaQuery.of(context).size.width * 0.7,
                color: i["color"],
                child: Stack(
                  children: [
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 160.0, top: 30),
                      child: Image(
                        image: AssetImage(i["image"]),
                        width: 200,
                        height: 180,
                      ),
                    )),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 8),
                                    child: Text(i["type"],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: MyColor.blue)),
                                  ),
                                  Icon(
                                    CupertinoIcons.paw,
                                    color: MyColor.green,
                                  )
                                ],
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: MyColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: MyColor.green,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: MyColor.green),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            i["name"],
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
                            i['price'],
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
                    Positioned(
                      bottom: 5,
                      left: 70,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddToCart()));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: MyColor.green,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1, color: MyColor.dartGreen)),
                              child: Icon(
                                CupertinoIcons.shopping_cart,
                                color: i["color"],
                                size: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: MyColor.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1, color: MyColor.dartGreen)),
                              child: Icon(
                                CupertinoIcons.heart_fill,
                                color: MyColor.blue,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 5, top: 10),
              child: Text(
                'Overview',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: MyColor.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.water_drop,
                  color: MyColor.yellow,
                  size: 20,
                ),
                Column(
                  children: [
                    Text(
                      '250ml',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: MyColor.green),
                    ),
                    Text(
                      'WATER',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: MyColor.blue),
                    ),
                  ],
                ),
                Icon(
                  Icons.sunny,
                  color: MyColor.yellow,
                  size: 20,
                ),
                Column(
                  children: [
                    Text(
                      '35-40%',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: MyColor.green),
                    ),
                    Text(
                      'LIGHT',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: MyColor.blue),
                    ),
                  ],
                ),
                Icon(
                  Icons.data_saver_on_sharp,
                  color: MyColor.yellow,
                  size: 20,
                ),
                Column(
                  children: [
                    Text(
                      '250gm',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: MyColor.green),
                    ),
                    Text(
                      'FERTILIZER',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: MyColor.blue),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 5, top: 20),
              child: Text(
                'Plant Bio',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: MyColor.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 5, top: 10),
              child: Text(
                'No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: MyColor.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: const EdgeInsets.only(right: 5),
                width: MediaQuery.of(context).size.width * 0.8,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColor.black),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (Map j in products)
                      Image(
                        image: AssetImage(j["image"]),
                        fit: BoxFit.contain,
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
