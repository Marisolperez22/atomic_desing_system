import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:atomic_design_system/tokens/atomic_system_colors.dart';
import 'package:flutter/material.dart';

class Organisms extends StatelessWidget {
  const Organisms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AtomicDesignColors.dark, // Change the color to white
        leading: IconButton(
          icon: const Icon(
            Icons.undo,
            color: Colors.white,
          ), // Change the icon to a curved arrow and set the color to white
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Molecules'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: AtomicDesignColors.dark),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Column(
                children: [
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
              SizedBox(height: 30),
              Column(
                children: [
                  Text('Custom Bottom Navigation Bar', style: TextStyle(color: Colors.white),),
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: BarNavigationBottom(onBottomBarTap: () {}),
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
