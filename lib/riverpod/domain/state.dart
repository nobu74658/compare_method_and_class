import 'package:method_and_class/riverpod/domain/entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state.g.dart';

@riverpod
class TileListState extends _$TileListState {
  @override
  List<Tile> build() {
    return List.generate(1000, (index) {
      return Tile(
        tileId: index.toString(),
        isLiked: false,
      );
    });
  }

  void toggle(String tileId) {
    final index = state.indexWhere((element) => element.tileId == tileId);
    if (index == -1) {
      return;
    }

    final tile = state[index];
    state = [
      ...state.sublist(0, index),
      tile.copyWith(isLiked: !tile.isLiked),
      ...state.sublist(index + 1),
    ];
  }
}
