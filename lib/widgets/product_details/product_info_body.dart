import 'dart:js';

import 'package:flutter/material.dart';
import 'package:restore_the_skill/constants.dart';
import 'package:restore_the_skill/moduels/product.dart';
import 'package:restore_the_skill/screens/product_info.dart';
import 'package:restore_the_skill/widgets/product_card.dart';
import 'package:restore_the_skill/widgets/product_details/color_dot.dart';
import 'package:restore_the_skill/widgets/product_details/productImage.dart';
import 'package:restore_the_skill/widgets/product_details/product_info_body.dart';

class ProductInfoBody extends StatelessWidget {
  const ProductInfoBody(
      {super.key,
      required this.description,
      required this.title,
      required this.image,
      required this.price});

  final String description;
  final String title;
  final String image;
  final String price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                          fillColor: Color.fromARGB(255, 226, 70, 59),
                          isSelected: false),
                      ColorDot(
                          fillColor: const Color.fromARGB(255, 80, 232, 85),
                          isSelected: true),
                      ColorDot(fillColor: Colors.blue, isSelected: false),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Text(title,
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text("السعر : ${price}\$",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: Colors.amber[600]))
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description,style: Theme.of(context).textTheme.bodyLarge,),
        )
      ],
    );
  }
}
