import 'package:flutter/material.dart';

class DrugItem extends StatelessWidget {
  final String name;
  final String imagePath;
  final double price; // Make sure this is a double
  final String details;
  final String imageUrl;
  final VoidCallback onAddToCart;

  const DrugItem({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.details,
    required this.imageUrl,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        Text(name),
        Text('₱${price.toStringAsFixed(2)}'), // Format price for display
        ElevatedButton(
          onPressed: onAddToCart,
          child: const Text('Add to Cart'),
        ),
      ],
    );
  }
}