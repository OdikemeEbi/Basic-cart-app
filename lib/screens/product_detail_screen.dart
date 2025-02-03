import 'package:basic_cart_app/model/producr_model.dart';
import 'package:basic_cart_app/screens/cart_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  final List<Product> cart; // Added cart as a parameter

  const ProductDetailScreen({super.key, required this.product, required this.cart});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  void addToCart(Product product) {
    setState(() {
      widget.cart.add(product); // Add product to the passed cart list

      // Display snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("${product.name} added to cart"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cart: widget.cart),
                ),
              );
            },
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.purple),
                child: const Text(
                  'Go to cart',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(widget.product.imageUrl.toString()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product.name),
                  Text("\$${widget.product.price}"),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(widget.product.description),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () => addToCart(widget.product),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.purple,
                      ),
                      child: const Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
