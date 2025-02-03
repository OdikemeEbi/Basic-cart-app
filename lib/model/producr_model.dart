// lib/models/product.dart

// lib/models/product.dart

class Product {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String? imageUrl;

  Product({required this.name, required this.description, required this.price, this.imageUrl, this.id});

  // Product({required this.name, required this.description, required this.price});
}

// Sample list of products
List<Product> products = [
  Product(id: 1, name: "Refrigerator", description: "Energy-efficient refrigerator with a large capacity.", price: 799.99, imageUrl: 'assets/images/img1.jpeg'),
  Product(id: 2, name: "Washing Machine", description: "Front-load washing machine with smart features.", price: 599.99, imageUrl: 'assets/images/img2.jpeg'),
  Product(id: 3, name: "Microwave Oven", description: "Compact microwave with multiple cooking settings.", price: 129.99, imageUrl: 'assets/images/img3.jpeg'),
  Product(id: 4, name: "Dishwasher", description: "High-efficiency dishwasher with quiet operation.", price: 499.99, imageUrl: 'assets/images/img4.jpeg'),
  Product(id: 5, name: "Air Conditioner", description: "Portable air conditioner for quick cooling.", price: 299.99, imageUrl: 'assets/images/img5.jpeg'),
  Product(id: 6, name: "Electric Kettle", description: "Fast boiling electric kettle with auto shut-off.", price: 39.99, imageUrl: 'assets/images/img6.jpeg'),
  Product(id: 7, name: "Coffee Maker", description: "Programmable coffee maker for fresh brews every morning.", price: 89.99, imageUrl: 'assets/images/img7.jpeg'),
  Product(id: 8, name: "Blender", description: "High-speed blender for smoothies and soups.", price: 59.99, imageUrl: 'assets/images/img8.jpeg'),
  Product(id: 9, name: "Toaster", description: "2-slice toaster with adjustable browning control.", price: 29.99, imageUrl: 'assets/images/img9.jpeg'),
  Product(id: 10, name: "Slow Cooker", description: "6-quart slow cooker for easy meal preparation.", price: 49.99, imageUrl: 'assets/images/img10.jpeg'),
  Product(id: 11, name: "Vacuum Cleaner", description: "Lightweight vacuum cleaner with powerful suction.", price: 149.99, imageUrl: 'assets/images/img11.jpeg'),
  Product(id: 12, name: "Electric Grill", description: "Indoor electric grill for healthy cooking.", price: 79.99, imageUrl: 'assets/images/img12.jpeg'),
  Product(id: 13, name: "Food Processor", description: "Versatile food processor for chopping, slicing, and mixing.", price: 119.99, imageUrl: 'assets/images/img13.jpeg'),
  Product(id: 14, name: "Rice Cooker", description: "Automatic rice cooker with keep-warm function.", price: 39.99, imageUrl: 'assets/images/img14.jpeg'),
  Product(id: 15, name: "Steam Iron", description: "Powerful steam iron for wrinkle-free clothes.", price: 59.99, imageUrl: 'assets/images/img15.jpeg'),
  Product(id: 16, name: "Induction Cooktop", description: "Portable induction cooktop for fast cooking.", price: 89.99, imageUrl: 'assets/images/img16.jpeg'),
  Product(id: 17, name: "Deep Fryer", description: "Countertop deep fryer for crispy fried foods.", price: 79.99, imageUrl: 'assets/images/img17.jpeg'),
  Product(id: 18, name: "Humidifier", description: "Ultrasonic humidifier for improved air quality.", price: 49.99, imageUrl: 'assets/images/img18.jpeg'),
  Product(id: 19, name: "Electric Pressure Cooker", description: "Multi-functional pressure cooker for quick meals.", price: 89.99, imageUrl: 'assets/images/img19.jpeg'),
  Product(id: 20, name: "Air Fryer", description: "Healthy air fryer for guilt-free frying without oil.", price: 129.99, imageUrl: 'assets/images/img20.jpeg'),
];
