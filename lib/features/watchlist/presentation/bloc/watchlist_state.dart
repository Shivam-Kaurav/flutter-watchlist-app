part of 'watchlist_bloc.dart';

class WatchlistState extends Equatable {
  final List<StockEntity> stocks;
  const WatchlistState({required this.stocks});

  WatchlistState copyWith({List<StockEntity>? stocks}) {
    return WatchlistState(stocks: stocks ?? this.stocks);
  }

  @override
  List<Object> get props => [stocks];
}
