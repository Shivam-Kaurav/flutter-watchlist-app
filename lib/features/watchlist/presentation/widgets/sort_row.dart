import 'package:flutter/material.dart';

class SortRow extends StatelessWidget {
  const SortRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 210, 219, 224),
            ),
            child: Text('Sort by'),
          ),
        ],
      ),
    );
  }
}
