import 'package:trading_app/features/watchlist/domain/entities/stock_entity.dart';
import 'package:trading_app/features/watchlist/domain/repositories/watchlist_repository.dart';

class GetWatchlist {
  final WatchlistRepository repository;

  GetWatchlist({required this.repository});

  List<StockEntity> call() {
    return repository.getWatchlist();
  }
}
