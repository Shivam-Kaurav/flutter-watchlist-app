import 'package:trading_app/features/watchlist/domain/entities/stock_entity.dart';

class StockModel extends StockEntity {
  const StockModel({
    required super.symbol,
    required super.name,
    required super.price,
    required super.change,
  });
}
