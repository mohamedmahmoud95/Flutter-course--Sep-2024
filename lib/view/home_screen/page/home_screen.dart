import 'package:e_commerce_app/data_repo/sample_products.dart';
import 'package:e_commerce_app/view/home_screen/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.all(20),child:Center(child:
          SingleChildScrollView(
          child:
      Wrap(
        runSpacing: 20,
        spacing: 10,
        children: [
          ...listOfSampleProducts.map((product) => ProductWidget(product: product)),

        ],
      ),),
      ),),
    );
  }
}
