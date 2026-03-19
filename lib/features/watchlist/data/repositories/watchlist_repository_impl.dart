import 'package:trading_app/features/watchlist/data/models/stock_model.dart';
import 'package:trading_app/features/watchlist/domain/entities/stock_entity.dart';
import 'package:trading_app/features/watchlist/domain/repositories/watchlist_repository.dart';

class WatchlistRepositoryImpl implements WatchlistRepository {
  @override
  List<StockEntity> getWatchlist() {
    return const [
      StockModel(
        symbol: 'Reliance',
        name: 'NSE|EQ',
        price: 1374.10,
        change: -0.32,
      ),
      StockModel(
        symbol: 'HdfcBank',
        name: 'NSE|EQ',
        price: 966.95,
        change: 0.10,
      ),
      StockModel(
        symbol: 'AsianPaint',
        name: 'NSE | EQ',
        price: 2537.40,
        change: 0.26,
      ),
      StockModel(
        symbol: 'Nifty It',
        name: 'IDX',
        price: 35184.30,
        change: 2.55,
      ),
      StockModel(
        symbol: 'Reliance SEP 1880 CE',
        name: 'NSE | Monthly',
        price: 0.00,
        change: 0.00,
      ),
      StockModel(
        symbol: 'Reliance SEP 1370 PE',
        name: 'NSE | Monthly',
        price: 19.20,
        change: 5.49,
      ),
      StockModel(
        symbol: 'MRF',
        name: 'NSE | EQ',
        price: 147625.00,
        change: 0.37,
      ),
    ];
  }
}
