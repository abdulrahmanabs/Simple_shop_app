import 'package:flutter/material.dart';
import 'package:restore_the_skill/constants.dart';
import 'package:restore_the_skill/moduels/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required Product this.product,
    required int this.index,
    required VoidCallback this.pressEvent,
  });
  final Product product;
  final int index;
  final VoidCallback pressEvent;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap:pressEvent ,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
        height: 190,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        color: Colors.black38,
                        blurRadius: 25),
                  ]),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                width: 200,
                height: 160,
                child: Image.asset(
                 product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                width: size.width - 200,
                height: 136,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                         product.subTitle,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5, // 30 px padding
                            vertical: kDefaultPadding / 5, // 5 px padding
                          ),
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Text('السعر: \$${product.price}'),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
