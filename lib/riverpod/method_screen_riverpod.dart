import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:method_and_class/riverpod/domain/state.dart';

class MethodScreenRiverpod extends ConsumerWidget {
  const MethodScreenRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tileList = ref.read(tileListStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('メソッドで実装（riverpod）'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (final tile in tileList)
              _buildItem(
                tileId: tile.tileId,
                ref: ref,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildItem({
    required String tileId,
    required WidgetRef ref,
  }) {
    debugPrint('Item $tileId build');

    final tile = ref.watch(
      tileListStateProvider.select(
        (value) =>
            value.where((element) => element.tileId == tileId).firstOrNull,
      ),
    );

    if (tile == null) {
      return const SizedBox();
    }

    return InkWell(
      onTap: () {
        ref.read(tileListStateProvider.notifier).toggle(tile.tileId);
      },
      child: ListTile(
        title: Text('Item ${tile.tileId}'),
        subtitle: Text(DateTime.now().toString()),
        trailing: tile.isLiked
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border),
      ),
    );
  }
}
