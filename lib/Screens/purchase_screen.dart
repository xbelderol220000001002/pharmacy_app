import 'package:flutter/material.dart';

class PurchaseScreen extends StatelessWidget {
  final double totalCost;

  const PurchaseScreen({super.key, required this.totalCost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Total Amount: ₱$totalCost',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'ONLINE PAYMENT:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle GCash payment
              },
              child: const Text('GCash'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle PayMaya payment
              },
              child: const Text('PayMaya'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Debit Card payment
              },
              child: const Text('Debit Card'),
            ),
            const SizedBox(height: 20),
            const Text(
              'COUNTER PAYMENT:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle counter payment and print receipt
              },
              child: const Text('Print and Save Receipt'),
            ),
          ],
        ),
      ),
    );
  }
}