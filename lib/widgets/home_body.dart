import 'dart:js';

import 'package:flutter/material.dart';
import 'package:restore_the_skill/constants.dart';
import 'package:restore_the_skill/moduels/product.dart';
import 'package:restore_the_skill/screens/product_info.dart';
import 'package:restore_the_skill/widgets/product_card.dart';
import 'package:restore_the_skill/widgets/product_details/product_info_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: products[index],
                        index: index,
                        pressEvent: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductInfoPage(
                                product: products[index],
                              ),
                            )),
                      );
                    },
                    itemCount: products.length,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
