import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sensex', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                '1,225.55 +14.50 (1.3%)',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Nifty Bank', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                '54,172.15 -14.75 (-0.03%)',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
