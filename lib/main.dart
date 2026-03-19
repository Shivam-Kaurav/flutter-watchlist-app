import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app/features/watchlist/data/repositories/watchlist_repository_impl.dart';
import 'package:trading_app/features/watchlist/domain/usecases/get_watchlist.dart';
import 'package:trading_app/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:trading_app/features/watchlist/presentation/screens/watchlist_screen.dart';

void main() {
  final repository = WatchlistRepositoryImpl();
  final getWatchlist = GetWatchlist(repository: repository);
  runApp(MyApp(getWatchlist: getWatchlist));
}

class MyApp extends StatelessWidget {
  final GetWatchlist getWatchlist;
  const MyApp({required this.getWatchlist, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WatchlistBloc(getWatchlist),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        ),
        home: const WatchlistScreen(),
      ),
    );
  }
}
