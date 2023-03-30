import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Model with _$Model {
  const factory Model({
    required String id,
    required String object,
    required String owned_by,
    required List<dynamic> permission
  }) = _Models;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

}
