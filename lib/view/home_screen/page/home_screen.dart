import 'package:e_commerce_app/data_repo/sample_products.dart';
import 'package:e_commerce_app/view/home_screen/widgets/product_widget.dart';
import 'package:e_commerce_app/view/home_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce_app/models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  List<Product> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts.addAll(listOfSampleProducts);
  }

  void updateFilteredProducts(String searchKeyword) {
    if (searchKeyword.isEmpty) {
      filteredProducts.clear();
      filteredProducts.addAll(listOfSampleProducts);
    } else {
      filteredProducts.clear();
      filteredProducts.addAll(listOfSampleProducts.where((product) =>
          product.name.toLowerCase().contains(searchKeyword.toLowerCase())));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.shopping_cart),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.profile_tick,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Center(
            child: Column(
              children: [
                SearchBarWidget(
                    searchController: searchController,
                    onSearch: (String? searchKeyword) {
                      if (searchKeyword != null) {
                        setState(() {
                          updateFilteredProducts(searchKeyword);
                        });
                      }
                    }),

                const SizedBox(height: 10,),

                filteredProducts.isEmpty
                    ? const Expanded(
                        child: Center(
                          child: Text("No Products Found", style: TextStyle(),),
                        ),
                      )
                    :
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      runSpacing: 20,
                      spacing: 10,
                      children: [
                        ...filteredProducts
                            .map((product) => ProductWidget(product: product)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
