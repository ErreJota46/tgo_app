// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonResponsUSERSStruct extends BaseStruct {
  JsonResponsUSERSStruct({
    DateTime? joined,
    String? name,
    String? lastName,
    String? email,
  })  : _joined = joined,
        _name = name,
        _lastName = lastName,
        _email = email;

  // "joined" field.
  DateTime? _joined;
  DateTime? get joined => _joined;
  set joined(DateTime? val) => _joined = val;
  bool hasJoined() => _joined != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  static JsonResponsUSERSStruct fromMap(Map<String, dynamic> data) =>
      JsonResponsUSERSStruct(
        joined: data['joined'] as DateTime?,
        name: data['name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
      );

  static JsonResponsUSERSStruct? maybeFromMap(dynamic data) => data is Map
      ? JsonResponsUSERSStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'joined': _joined,
        'name': _name,
        'last_name': _lastName,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'joined': serializeParam(
          _joined,
          ParamType.DateTime,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static JsonResponsUSERSStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      JsonResponsUSERSStruct(
        joined: deserializeParam(
          data['joined'],
          ParamType.DateTime,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'JsonResponsUSERSStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JsonResponsUSERSStruct &&
        joined == other.joined &&
        name == other.name &&
        lastName == other.lastName &&
        email == other.email;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([joined, name, lastName, email]);
}

JsonResponsUSERSStruct createJsonResponsUSERSStruct({
  DateTime? joined,
  String? name,
  String? lastName,
  String? email,
}) =>
    JsonResponsUSERSStruct(
      joined: joined,
      name: name,
      lastName: lastName,
      email: email,
    );
