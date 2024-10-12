import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

const String baseProductImageUrl = 'assets/images/products';
Product sampleProduct1 = Product(
    id: '1',
    name: 'Soft Element Jack',
    description: 'Best ever whenever',
    price: 57.5,
    availableColors: [
      Colors.black,
      Colors.red,
      Colors.grey,
      Colors.blueGrey.shade900,
    ],
    imageUrl: '$baseProductImageUrl/chair1.jpg');


Product sampleProduct2 = Product(
    id: '2',
    name: 'Leset Galant',
    description: 'Very Best, Amazing, To7fa, Batates',
    price: 64.00,
    availableColors: [
      Colors.black,
      Colors.yellow,
      Colors.grey,
    ],
    imageUrl: '$baseProductImageUrl/chair2.jpg');

Product sampleProduct3 = Product(
    id: '3',
    name: 'Chester chair',
    description: 'ايه الحلاوة دييييي',
    price: 61.00,
    availableColors: [
      Colors.black,
      Colors.grey,
    ],
    imageUrl: '$baseProductImageUrl/chair3.jpg');


Product sampleProduct4 = Product(
    id: '4',
    name: 'Avrora chair',
    description: 'ايه ته ايه ته ايه الطعااامة دييي',
    price: 47.50,
    availableColors: [
      Colors.black,
      Colors.grey,
      Colors.teal,
      Colors.white
    ],
    imageUrl: '$baseProductImageUrl/chair4.jpg');