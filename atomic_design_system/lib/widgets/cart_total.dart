import 'package:flutter/material.dart';



class CartTotal extends StatelessWidget {
  final String subtotal;
  final String total;

  const CartTotal({super.key, required this.subtotal, required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal: ',
                            style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 106, 106, 106),
                            ),
                          ),
                          Text(
                            '\$$subtotal',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Envío: ',
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 106, 106, 106),
                      ),
                    ),
                    Text(
                      '\$25.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total: ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$$total',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}

 