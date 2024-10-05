import 'package:flutter/material.dart';
import 'package:pharmacy_app/Screens/rx_screen.dart';
import 'package:pharmacy_app/screens/otc_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pharmacy Mobile System'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to RX Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RXScreen(cartItems: [],),
                  ),
                );
              },
              child: const Text('RX'),
            ),
            const SizedBox(height: 20), // Adds spacing between the buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to OTC Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OTCScreen(cartItems: [],),
                  ),
                );
              },
              child: const Text('OTC'),
            ),
          ],
        ),
      ),
    );
  }
}