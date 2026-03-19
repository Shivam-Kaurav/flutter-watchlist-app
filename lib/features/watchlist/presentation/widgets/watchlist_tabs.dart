import 'package:flutter/material.dart';

class WatchlistTabs extends StatelessWidget {
  const WatchlistTabs({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: const [
          Text(
            'Watchlist 1',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(width: 20),
          Text('Watchlist 2', style: TextStyle(color: Colors.grey)),
          SizedBox(width: 20),
          Text('Watchlist 3', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
