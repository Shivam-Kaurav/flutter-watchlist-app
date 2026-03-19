import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading_app/features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'package:trading_app/core/utils/primary_button.dart';

class EditWatchlistScreen extends StatelessWidget {
  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (context) => const EditWatchlistScreen());
  const EditWatchlistScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Watchlist')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 201, 199, 199),
              ),
              padding: EdgeInsets.all(12),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Watchlist 1',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.edit),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<WatchlistBloc, WatchlistState>(
                builder: (context, state) {
                  return ReorderableListView.builder(
                    itemCount: state.stocks.length,
                    onReorder: (oldIndex, newIndex) {
                      context.read<WatchlistBloc>().add(
                        ReorderWatchlist(
                          oldIndex: oldIndex,
                          newIndex: newIndex,
                        ),
                      );
                    },
                    itemBuilder: (context, index) {
                      final stock = state.stocks[index];
                      return ListTile(
                        key: ValueKey(stock.symbol),
                        leading: const Icon(Icons.drag_handle),

                        title: Text(stock.symbol),
                        trailing: IconButton(
                          onPressed: () {
                            context.read<WatchlistBloc>().add(
                              DeleteStock(index),
                            );
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            PrimaryButton(
              labeltext: 'Edit other watchlists',
              color: const Color.fromARGB(255, 155, 184, 199),
            ),
            const SizedBox(height: 20),
            PrimaryButton(labeltext: 'Save Watchlist', color: Colors.green),
          ],
        ),
      ),
    );
  }
}
