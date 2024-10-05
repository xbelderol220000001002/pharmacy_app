import 'package:flutter/material.dart';

class CoughScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  const CoughScreen({required this.cartItems, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cough Medicines'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your cough medication options here
            ElevatedButton(
              onPressed: () {
                // Logic to add to cart
              },
              child: const Text('Add to Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Back to the previous screen
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}