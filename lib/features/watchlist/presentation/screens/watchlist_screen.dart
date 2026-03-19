import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:trading_app/features/watchlist/presentation/screens/edit_watchlist_screen.dart';
import 'package:trading_app/features/watchlist/presentation/widgets/bottom_navigation_bar.dart';
import 'package:trading_app/features/watchlist/presentation/widgets/header.dart';
import 'package:trading_app/features/watchlist/presentation/widgets/search_bar.dart';
import 'package:trading_app/features/watchlist/presentation/widgets/sort_row.dart';
import 'package:trading_app/features/watchlist/presentation/widgets/stock_list.dart';
import 'package:trading_app/features/watchlist/presentation/widgets/watchlist_tabs.dart';

class WatchlistScreen extends StatefulWidget {
  const WatchlistScreen({super.key});
  @override
  State<StatefulWidget> createState() => _WatchlistScreenState();
}

class _WatchlistScreenState extends State<WatchlistScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WatchlistBloc>().add(LoadWatchlist());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watchlist'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, EditWatchlistScreen.route());
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          Header(),
          MainSearchBar(),
          SortRow(),
          WatchlistTabs(),
          Expanded(child: StockList()),
          BottomNavigation(),
        ],
      ),
    );
  }
}
