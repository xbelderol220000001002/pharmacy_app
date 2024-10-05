import 'package:flutter/material.dart';
import 'purchase_screen.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  const CheckoutScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    double totalCost = 0.0;

    // Calculate the total cost of the items in the cart
    for (var item in cartItems) {
      totalCost += item['price'] * item['quantity'];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  title: Text('${item['name']}'),
                  subtitle: Text('₱ ${item['price']} x ${item['quantity']}'),
                  trailing: Text('₱ ${item['price'] * item['quantity']}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Total: ₱$totalCost',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the Purchase screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PurchaseScreen(totalCost: totalCost),
                      ),
                    );
                  },
                  child: const Text('Proceed to Purchase'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}