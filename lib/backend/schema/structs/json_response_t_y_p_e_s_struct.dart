// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonResponseTYPESStruct extends BaseStruct {
  JsonResponseTYPESStruct({
    int? idTipo,
  }) : _idTipo = idTipo;

  // "idTipo" field.
  int? _idTipo;
  int get idTipo => _idTipo ?? 0;
  set idTipo(int? val) => _idTipo = val;
  void incrementIdTipo(int amount) => _idTipo = idTipo + amount;
  bool hasIdTipo() => _idTipo != null;

  static JsonResponseTYPESStruct fromMap(Map<String, dynamic> data) =>
      JsonResponseTYPESStruct(
        idTipo: castToType<int>(data['idTipo']),
      );

  static JsonResponseTYPESStruct? maybeFromMap(dynamic data) => data is Map
      ? JsonResponseTYPESStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idTipo': _idTipo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idTipo': serializeParam(
          _idTipo,
          ParamType.int,
        ),
      }.withoutNulls;

  static JsonResponseTYPESStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      JsonResponseTYPESStruct(
        idTipo: deserializeParam(
          data['idTipo'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'JsonResponseTYPESStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JsonResponseTYPESStruct && idTipo == other.idTipo;
  }

  @override
  int get hashCode => const ListEquality().hash([idTipo]);
}

JsonResponseTYPESStruct createJsonResponseTYPESStruct({
  int? idTipo,
}) =>
    JsonResponseTYPESStruct(
      idTipo: idTipo,
    );
