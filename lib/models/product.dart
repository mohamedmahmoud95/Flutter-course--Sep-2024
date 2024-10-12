import 'dart:ui';

class Product{
  final String id;
  final String name;
  final String description;
  final double price;
  final List<Color> availableColors;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.availableColors,
    required this.imageUrl,
  });
}

