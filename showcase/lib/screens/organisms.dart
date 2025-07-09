import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:atomic_design_system/tokens/atomic_system_colors.dart';
import 'package:example/config/routes/showcase_routes.dart';
import 'package:flutter/material.dart';

class Organisms extends StatelessWidget {
  const Organisms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Custom AppBar',
        leftIcon: Icons.arrow_back_ios_rounded,
        rightIcon: Icons.mark_chat_unread_outlined,
        leftIconOnPressed: () => Navigator.of(context).pushReplacementNamed(ShowcaseRoutes.home),
        rightIconOnPressed: () {},
      ),
      body: Container(
        decoration: const BoxDecoration(color: AtomicDesignColors.dark),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Column(
                children: [
                   Column(
                children: [
                  Text(
                    'Custom Bottom Navigation Bar',
                    style: TextStyle(color: Colors.white),
                  ),
              SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: BarNavigationBottom(onBottomBarTap: () {}),
                  ),
                ],
              ),
              SizedBox(height: 30),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product card',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'A customizable product card',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
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
             
            ],
          ),
        ),
      ),
    );
  }
}
