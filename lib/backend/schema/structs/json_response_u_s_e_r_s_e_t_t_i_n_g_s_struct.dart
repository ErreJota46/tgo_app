// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonResponseUSERSETTINGSStruct extends BaseStruct {
  JsonResponseUSERSETTINGSStruct({
    int? id,
    String? language,
    String? theme,
  })  : _id = id,
        _language = language,
        _theme = theme;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;
  bool hasLanguage() => _language != null;

  // "theme" field.
  String? _theme;
  String get theme => _theme ?? '';
  set theme(String? val) => _theme = val;
  bool hasTheme() => _theme != null;

  static JsonResponseUSERSETTINGSStruct fromMap(Map<String, dynamic> data) =>
      JsonResponseUSERSETTINGSStruct(
        id: castToType<int>(data['id']),
        language: data['language'] as String?,
        theme: data['theme'] as String?,
      );

  static JsonResponseUSERSETTINGSStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? JsonResponseUSERSETTINGSStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'language': _language,
        'theme': _theme,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
        'theme': serializeParam(
          _theme,
          ParamType.String,
        ),
      }.withoutNulls;

  static JsonResponseUSERSETTINGSStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      JsonResponseUSERSETTINGSStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
        theme: deserializeParam(
          data['theme'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'JsonResponseUSERSETTINGSStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JsonResponseUSERSETTINGSStruct &&
        id == other.id &&
        language == other.language &&
        theme == other.theme;
  }

  @override
  int get hashCode => const ListEquality().hash([id, language, theme]);
}

JsonResponseUSERSETTINGSStruct createJsonResponseUSERSETTINGSStruct({
  int? id,
  String? language,
  String? theme,
}) =>
    JsonResponseUSERSETTINGSStruct(
      id: id,
      language: language,
      theme: theme,
    );
