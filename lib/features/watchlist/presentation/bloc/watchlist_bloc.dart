import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:trading_app/features/watchlist/domain/entities/stock_entity.dart';
import 'package:trading_app/features/watchlist/domain/usecases/get_watchlist.dart';

part 'watchlist_event.dart';
part 'watchlist_state.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  final GetWatchlist getWatchlist;
  WatchlistBloc(this.getWatchlist) : super(const WatchlistState(stocks: [])) {
    on<LoadWatchlist>(_onLoad);
    on<ReorderWatchlist>(_onReorder);
    on<DeleteStock>(_onDelete);
  }

  void _onLoad(LoadWatchlist event, Emitter<WatchlistState> emit) {
    final stocks = getWatchlist();
    emit(state.copyWith(stocks: stocks));
  }

  void _onReorder(ReorderWatchlist event, Emitter<WatchlistState> emit) {
    final updatedList = List.of(state.stocks);
    int newIndex = event.newIndex;
    if (newIndex > event.oldIndex) {
      newIndex = newIndex - 1;
      final item = updatedList.removeAt(event.oldIndex);
      updatedList.insert(newIndex, item);
      emit(state.copyWith(stocks: updatedList));
    }
  }

  void _onDelete(DeleteStock event, Emitter<WatchlistState> emit) {
    final updatedList = List.of(state.stocks);
    updatedList.removeAt(event.index);
    emit(state.copyWith(stocks: updatedList));
  }
}
