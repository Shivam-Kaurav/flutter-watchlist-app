import 'package:flutter/material.dart';
import 'package:trading_app/features/watchlist/domain/entities/stock_entity.dart';

class StockTile extends StatelessWidget {
  final StockEntity stocks;
  const StockTile({super.key, required this.stocks});

  @override
  Widget build(BuildContext context) {
    //
    final isPositive = stocks.isPositive;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(border: Border(bottom: BorderSide())),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stocks.symbol,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  stocks.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                stocks.price.toString(),
                style: const TextStyle(fontSize: 15),
              ),
              Text(
                '${stocks.change > 0 ? '+' : ''}${stocks.change}',
                style: TextStyle(
                  color: isPositive ? Colors.green : Colors.red,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
