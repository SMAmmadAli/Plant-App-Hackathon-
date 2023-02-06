import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class MyBuilder extends StatelessWidget {
  const MyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                        child:
                            Image(image: AssetImage(products[index]['image'])))
                  ],
                ),
              ),
            );
          }),
    ));
  }
}
