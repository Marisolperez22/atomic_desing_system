import 'package:flutter/material.dart';

import '../atoms/buttons/primary_button.dart';
import '../organisms/bar_navigation_bottom.dart';
import '../organisms/custom_appbar.dart';

/// Base template for all pages such as:
/// - Custom Appbar
/// - Bottom navigaton system

class BasicLayoutTemplate extends StatelessWidget {
  final Widget body;
  final String title;
  final bool showBottomNav;
  final void Function()? onBottomBarTap;

  const BasicLayoutTemplate({
    super.key,
    required this.body,
    required this.title,
    this.onBottomBarTap,
    this.showBottomNav = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarColor: const Color.fromARGB(255, 235, 237, 237),
        title: 'Fake Store',
        rightIconOnPressed: () {},
        leftIcon: Icons.shopping_bag_outlined,
        rightIcon:  Icons.search,
        leftIconOnPressed: () {},
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 235, 237, 237),
                  const Color.fromARGB(255, 255, 255, 255),
                ],
              ),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Card
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'hola',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Ahora con el 25% de descuento',
                                  style: TextStyle(),
                                ),
                                SizedBox(height: 10),

                                PrimaryButton(
                                  text: 'Comprar ahora',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.75,
                          ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            color: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // Imagen
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10),
                                      ),
                                      child: Image.network(
                                        'https://assets.adidas.com/images/w_600,f_auto,q_auto/9b3800d67ec74b528f67ea384a3ebe44_9366/Tenis_Duramo_RC_Azul_ID2706.jpg',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  // Texto
                                  Text(
                                    'Hola',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Fila con precio e icono
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$  100',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '1',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
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
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        Positioned(
            bottom: 30,
            left: 10,
            right: 10,
            child: BarNavigationBottom(
              onNavItemTap: (index) {
               
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
