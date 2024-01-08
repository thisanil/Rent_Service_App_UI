import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_servise/common/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            product.image!,
            width: 26,
            height: 26,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            product.title!,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.Subtitle!,
            style: const TextStyle(fontSize: 8),
          ),
        ],
      ),
    );
  }
}
