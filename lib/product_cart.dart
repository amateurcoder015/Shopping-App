import 'dart:ui';

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backgroundColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor
  });
  

  @override
  Widget build(BuildContext context) {
    return Card(

      color: backgroundColor, // ✅ subtle contrast on dark mode
      elevation: 2,
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 5,),
                Text("\$$price", style: Theme.of(context).textTheme.titleSmall,),
                const SizedBox(height: 5,),
                Center(child: Image.asset(image, height: 220,))
              ],
            ),
          ),
        ),
      ),
    ) ;


  }
}