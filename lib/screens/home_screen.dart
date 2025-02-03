// lib/screens/home_screen.dart

import 'package:basic_cart_app/model/producr_model.dart';
import 'package:basic_cart_app/screens/cart_screen.dart';
import 'package:basic_cart_app/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> cart = [];

  void addToCart(Product product) {
    setState(() {
      cart.add(product);

      /// display snackbar
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
        title: const Text("Products"),
        actions: [
          Stack(
            children: [
              CartIconButton(cart: cart),
              Positioned(
                right: 10,
                child: Text(
                  cart.length.toString(),
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cart: cart),
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(
                      product: products[index],
                      cart: cart,
                    ),
                  ));
            },
            child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: SizedBox(
                          height: 120,
                          child: Image.asset(
                            products[index].imageUrl.toString(),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(products[index].name),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Text("\$${products[index].price}")),
                              InkWell(
                                onTap: () => addToCart(products[index]),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.purple,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
