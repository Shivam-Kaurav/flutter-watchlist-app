import 'package:equatable/equatable.dart';

class StockEntity extends Equatable {
  final String symbol;
  final String name;
  final double price;
  final double change;

  const StockEntity({
    required this.symbol,
    required this.name,
    required this.price,
    required this.change,
  });
  bool get isPositive => change >= 0;

  @override
  List<Object?> get props => [symbol, name, price, change];
}
