import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
abstract class Tile with _$Tile {
  const factory Tile({
    required String tileId,
    required bool isLiked,
  }) = _Tile;

  const Tile._();
}
