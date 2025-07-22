import 'package:flutter/material.dart';


class CartAddProduct extends StatelessWidget {
  final void Function() onDecrease;
  final void Function() onIncrease;
  final String item;

  const CartAddProduct({
    super.key,
    required this.onDecrease,
    required this.onIncrease,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(icon: Icon(Icons.remove), onPressed: onDecrease),
        Text(item),
        IconButton(icon: Icon(Icons.add), onPressed: onIncrease),
      ],
    );
  }
}
