// lib/screens/checkout_screen.dart

import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: const Center(
        child: Text("Thank you for your purchase!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
