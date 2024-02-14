import 'package:flutter/material.dart';
import 'package:restore_the_skill/constants.dart';
import 'package:restore_the_skill/moduels/product.dart';
import 'package:restore_the_skill/widgets/product_details/product_info_body.dart';

class ProductInfoPage extends StatelessWidget {
  const ProductInfoPage({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "رجوع",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: ProductInfoBody(
        description: product.description,
        image: product.image,
        title: product.title,
        price: product.price.toString(),
      ),
    );
  }
}
