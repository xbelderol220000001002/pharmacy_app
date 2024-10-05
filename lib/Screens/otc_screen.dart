import 'package:flutter/material.dart';
import 'flu_cold_screen.dart';
import 'anti_allergy_screen.dart';
import 'cough_screen.dart';

class OTCScreen extends StatelessWidget {
  const OTCScreen({super.key, required List<Map<String, dynamic>> cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTC Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const FluColdScreen()));
            },
            child: const Text('Flu or Cold'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const AntiAllergyScreen(cartItems: [],)));
            },
            child: const Text('Anti Allergy'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const CoughScreen(cartItems: [],)));
            },
            child: const Text('Cough'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}