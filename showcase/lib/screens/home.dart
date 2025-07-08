import 'package:atomic_design_system/atomic_design_system.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        rightIcon: Icons.search_rounded,
        leftIcon: Icons.menu_rounded,
        title: 'Design System',
        leftIconOnPressed: () {},
        rightIconOnPressed: () {},
      ),
      body: Stack(
        children: [Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ProductCard(
                      productName: 'Nike Shoe',
                      price: '85\$',
                      rating: '4.8',
                      favoriteOnPressed: () {},
                      imageUrl:
                          'https://cdn.shopify.com/s/files/1/0631/5134/1738/products/550-white-grey-285778_5000x_17b28002-9db1-47b2-b19c-1dacc2f07425.png?v=1663923702',
                    ),
                  ),
                  Expanded(
                    child: ProductCard(
                      productName: 'Sneakers ft',
                      price: '100\$',
                      rating: '4.5',
                      favoriteOnPressed: () {},
                      imageUrl:
                          'https://www.kimashophn.com/cdn/shop/files/GRAVELA-WHPK-W5-A.png?v=1735942130&width=533',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
         Positioned(
              left: 20,
              right: 20,
              bottom: 25,
              child: BarNavigationBottom(
                onBottomBarTap: () {
                  
                },
              ),
            ),
        ]
        
      ),
    );
  }
}
