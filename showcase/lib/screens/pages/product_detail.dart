import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductDetailPage(
      productName: 'Camiseta',
      imageUrl:
          'https://www.lazo.com.co/cdn/shop/files/CAMISETAMODIFICADA1_2.png?v=1739452423',
    );
  }
}
