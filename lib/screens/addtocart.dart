import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/data.dart';
import 'package:hackathon/screens/final_screen.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/widgets/buttons.dart';

import '../utils/image_constant.dart';
import 'drawer.dart';

class AddToCart extends StatefulWidget {
  AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  num addNumber = 1;
  num total = 1600;

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Your Bag",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: MyColor.green),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (Map i in favItem)
              ListTile(
                leading: Image(image: AssetImage(i["image"])),
                title: Text(
                  i["name"],
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: MyColor.green),
                ),
                subtitle: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          addNumber = ++addNumber;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: MyColor.black, width: 1)),
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: MyColor.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '$addNumber',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: MyColor.black),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (addNumber < 1) {
                            addNumber == 0;
                          } else {
                            addNumber = --addNumber;
                          }
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: MyColor.black, width: 1)),
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: MyColor.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Icon(
                      CupertinoIcons.delete,
                      color: MyColor.yellow,
                      size: 25,
                    )
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.location_circle,
                        size: 30,
                        color: MyColor.green,
                      ),
                    ),
                    Text(
                      i["price"],
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: MyColor.black),
                    )
                  ],
                ),
              ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bus,
                color: MyColor.green,
                size: 30,
              ),
              title: Text(
                "Delivery",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: MyColor.black),
              ),
              subtitle: Text("Order above ₹1200 to get free delivery",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: MyColor.black)),
              trailing: Text("\$40",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: MyColor.black)),
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings_solid,
                color: MyColor.green,
                size: 30,
              ),
              title: Text(
                "Apply Coupon",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: MyColor.black),
              ),
              trailing: Text("_____________",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: MyColor.black)),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Total",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                        color: MyColor.black)),
                Text("\$${total * addNumber}",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: MyColor.black)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: MyButtons(
                buttonText: "KIRIM",
                onTapFunction: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyColors {}
