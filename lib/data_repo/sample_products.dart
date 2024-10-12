import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

List<Product> listOfSampleProducts = [
  sampleProduct15,
  sampleProduct16,
  sampleProduct17,
  sampleProduct12,
  sampleProduct10,
  sampleProduct6,
  sampleProduct1,
  sampleProduct2,
  sampleProduct13,
  sampleProduct14,
  sampleProduct7,
  sampleProduct8,
  sampleProduct9,
  sampleProduct3,
  sampleProduct4,
  sampleProduct11,
  sampleProduct5,

];

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
    availableColors: [Colors.black, Colors.grey, Colors.teal, Colors.white],
    imageUrl: '$baseProductImageUrl/chair4.jpg');

Product sampleProduct5 = Product(
    id: '5',
    name: 'Cat fur magnet',
    description: "The best solution to gather all your cats' fur in one place",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.teal, Colors.white],
    imageUrl: '$baseProductImageUrl/chair5.PNG');

Product sampleProduct6 = Product(
    id: '6',
    name: 'Cat fur magnet pro',
    description:
        "The best pro solution to gather all your cats' fur in one place",
    price: 97.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair6.PNG');

Product sampleProduct7 =
 Product(
id: '7',
name: 'Cat fur magnet Pro Max',
description:
"The best Pro Max solution to gather all your cats' fur in one place",
price: 127.50,
availableColors: [Colors.black, Colors.grey, Colors.white],
imageUrl: '$baseProductImageUrl/chair7.PNG');


Product sampleProduct8 =
Product(
    id: '8',
    name: 'Ran out of names',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair8.PNG');


Product sampleProduct9 =
Product(
    id: '9',
    name: 'Ran out of names 2',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair9.PNG');


Product sampleProduct10 =
Product(
    id: '10',
    name: 'Ran out of names 3',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair10.PNG');


Product sampleProduct11 =
Product(
    id: '11',
    name: 'Ran out of names 4',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair11.PNG');

Product sampleProduct12 =
Product(
    id: '12',
    name: 'Ran out of names 5',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair12.PNG');

Product sampleProduct13 =
Product(
    id: '13',
    name: 'Ran out of names 6',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair13.PNG');

Product sampleProduct14 =
Product(
    id: '14',
    name: 'Ran out of names 7',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair14.PNG');

Product sampleProduct15 =
Product(
    id: '15',
    name: 'Ran out of names 8',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair15.PNG');

Product sampleProduct16 =
Product(
    id: '16',
    name: 'Ran out of names 9',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair16.PNG');

Product sampleProduct17 =
Product(
    id: '17',
    name: 'Ran out of names 10',
    description:
    "Ran out of description, and GitHub co-pilot is not working to some reasone :(",
    price: 77.50,
    availableColors: [Colors.black, Colors.grey, Colors.white],
    imageUrl: '$baseProductImageUrl/chair17.PNG');