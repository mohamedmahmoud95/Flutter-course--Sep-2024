import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchBarWidget extends StatefulWidget {
  final TextEditingController searchController;
  final Function(String?) onSearch;
  const SearchBarWidget({super.key, required this.searchController, required this.onSearch});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {

  @override
  Widget build(BuildContext context) {
    return
        TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(
              color: Colors.grey.shade700,
            ),
            prefixIcon:  const Icon(Iconsax.search_normal),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:  BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
          ),
          controller: widget.searchController,
          onSubmitted: widget.onSearch,
          onChanged: widget.onSearch,
    );
  }
}
