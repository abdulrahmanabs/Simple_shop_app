import 'package:flutter/material.dart';
import 'package:restore_the_skill/constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
    required this.image
  });

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Container(
        width: size.width * 0.7,
        height: size.width * 0.7,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
