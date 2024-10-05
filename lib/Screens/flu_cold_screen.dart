import 'package:flutter/material.dart';
import 'drug_item.dart';

class FluColdScreen extends StatelessWidget {
  const FluColdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flu Medicine'),
      ),
      body: Column(
        children: [
          DrugItem(
            name: 'Neozep Forte',
            imagePath: 'assets/neozep.png',
            price: 100.00, // Changed to double
            details: '',
            imageUrl: '',
            onAddToCart: () {
              // Implement add to cart logic here
            },
          ),
          DrugItem(
            name: 'Ascof Forte',
            imagePath: 'assets/ASCOF FORTE.png',
            price: 120.00, // Changed to double
            details: '',
            imageUrl: '',
            onAddToCart: () {
              // Implement add to cart logic here
            },
          ),
          DrugItem(
            name: 'Bio Flu',
            imagePath: 'assets/bioflu.jpg',
            price: 90.00, // Changed to double
            details: '',
            imageUrl: '',
            onAddToCart: () {
              // Implement add to cart logic here
            },
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to checkout
              },
              child: const Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}