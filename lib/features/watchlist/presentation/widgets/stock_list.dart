import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:trading_app/features/watchlist/presentation/widgets/stock_tile.dart';

class StockList extends StatefulWidget {
  const StockList({super.key});

  @override
  State<StockList> createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchlistBloc, WatchlistState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.stocks.length,
          itemBuilder: (context, index) {
            return StockTile(stocks: state.stocks[index]);
          },
        );
      },
    );
  }
}
