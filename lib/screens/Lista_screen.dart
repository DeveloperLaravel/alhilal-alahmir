// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
  const ListaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Favorite")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: demoProducts.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 45,
            ),
            itemBuilder: (context, index) => ProductCard(
              product: demoProducts[index],
              onPress: () {
                Navigator.pushNamed(context, demoProducts[index].rating);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  // ignore: use_super_parameters
  const ProductCard({
    Key? key,
    this.width = 110,
    this.aspectRetio = 0,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: const Color(0xFF979797).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              product.title,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final int id;
  final String title;
  final List<String> images;
  final List<Color> colors;
  final String rating;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    required this.rating,
    required this.title,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: ["assets/images/4.png"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "للزياره",
    rating: '/doctor',
  ),
  Product(
    id: 2,
    images: ["assets/images/5.webp"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "حجز للزياره",
    rating: '/rite',
  ),
  Product(
    id: 3,
    images: ["assets/images/4.png"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "للزياره",
    rating: '/lift',
  ),
  Product(
    id: 4,
    images: ["assets/images/4.png"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "تعديل النظام",
    rating: '/setting',
  ),
];
