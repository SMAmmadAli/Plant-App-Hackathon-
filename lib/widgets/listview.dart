import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/screens/singleItem_screen.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/utils/image_constant.dart';
import 'package:hackathon/utils/text_constant.dart';
import '../data/data.dart';
import '../screens/addtocart.dart';

class MyBuilder extends StatefulWidget {
  const MyBuilder({super.key});

  @override
  State<MyBuilder> createState() => _MyBuilderState();
}

class _MyBuilderState extends State<MyBuilder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (context, index) {
            if (index == 2) {
              return Container(
                margin: const EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.43,
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  children: [
                    Image(image: AssetImage(MyImage.video)),
                    Text(MyText.videoSentence,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: MyColor.black))
                  ],
                ),
              );
            } else {
              return Expanded(
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        addItem.add(products[index]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SingleItemScreen()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width * 0.86,
                        height: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          color: products[index]['color'],
                          borderRadius: BorderRadius.circular(25),
                          border:
                              Border.all(color: MyColor.dartGreen, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  child: Text(products[index]["type"],
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(products[index]['name'],
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: MyColor.blue)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text(products[index]["price"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: MyColor.blue)),
                                ),
                                IconButton(
                                    onPressed: () {
                                      favItem.add(products[index]);
                                      if (!products[index]['isfavourite']) {
                                        // favouriteproduct.add(products[index]);
                                        setState(() {
                                          products[index]['isfavourite'] = true;
                                        });
                                      } else {
                                        favItem.remove(products[index]);
                                        setState(() {
                                          products[index]['isfavourite'] =
                                              false;
                                        });
                                      }
                                    },
                                    icon: Icon(
                                      CupertinoIcons.heart_fill,
                                      size: 30,
                                      color:
                                          products[index]["isfavourite"] == true
                                              ? Colors.red
                                              : MyColor.blue,
                                    )),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddToCart()));
                                    },
                                    icon: Icon(
                                      CupertinoIcons.shopping_cart,
                                      size: 40,
                                      color: MyColor.blue,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: -40,
                        bottom: 10,
                        child: Image(
                          image: AssetImage(products[index]['image']),
                          width: 170,
                          height: 170,
                        )),
                  ],
                ),
              );
            }
          }),
    );
  }
}
