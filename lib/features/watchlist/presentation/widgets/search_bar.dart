import 'package:flutter/material.dart';

class MainSearchBar extends StatelessWidget {
  const MainSearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(12),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for instruments',
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
