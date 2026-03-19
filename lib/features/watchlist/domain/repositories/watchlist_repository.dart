import 'package:trading_app/features/watchlist/domain/entities/stock_entity.dart';

abstract class WatchlistRepository {
  List<StockEntity> getWatchlist();
}
