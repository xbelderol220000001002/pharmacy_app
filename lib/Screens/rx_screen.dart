import 'package:flutter/material.dart';

class RXScreen extends StatelessWidget {
  const RXScreen({super.key, required List<Map<String, dynamic>> cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RX Medications'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'RX Screen',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action when queuing button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You are now queued for RX.')),
                );
              },
              child: const Text('Queue for RX'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Back to First Screen
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}