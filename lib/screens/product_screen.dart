import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/data.dart';
import 'package:hackathon/screens/addtocart.dart';
import 'package:hackathon/utils/color_constant.dart';
import 'package:hackathon/utils/image_constant.dart';
import 'package:hackathon/utils/text_constant.dart';
import 'package:hackathon/screens/drawer.dart';
import 'package:hackathon/widgets/listview.dart';
import 'package:hackathon/widgets/listview_text.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: MyColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColor.white,
        leading: Image(image: AssetImage(MyImage.tree)),
        title: Text(
          MyText.plantify,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyDrawer()));
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(MyImage.girl), fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'There’s a Plant',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: MyColor.blue),
                    ),
                    Text(
                      'for everyone ',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: MyColor.blue),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Get your 1st plant',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: MyColor.blue),
                    ),
                    Text(
                      '@40% 0ff',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: MyColor.blue),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: MyColor.blue, width: 1)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: MyColor.blue,
                          ),
                          suffixIcon: Icon(
                            Icons.qr_code_scanner,
                            color: MyColor.blue,
                          ),
                          hintText: "Search"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: MyColor.blue, width: 1)),
                      child: Icon(
                        CupertinoIcons.shuffle_thick,
                        color: MyColor.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: TabBar(
                  indicatorColor: MyColor.blue,
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(
                      child: Text(
                        'Top Pick',
                        style: TextStyle(color: MyColor.green),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Indoor',
                        style: TextStyle(color: MyColor.blue),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Outdoor',
                        style: TextStyle(color: MyColor.blue),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Seeds',
                        style: TextStyle(color: MyColor.blue),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Planters',
                        style: TextStyle(color: MyColor.blue),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Expanded(
                child: Container(
                  child: MyBuilder(),
                ),
              ),
            ),
            ListViewText(text: MyText.text1),
            ListViewText(text: MyText.text2),
            ListViewText(text: MyText.text3),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
