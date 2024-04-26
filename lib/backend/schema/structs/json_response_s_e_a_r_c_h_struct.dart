// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JsonResponseSEARCHStruct extends BaseStruct {
  JsonResponseSEARCHStruct({
    String? name,
    String? description,
    String? image,
    int? latitude,
    int? longitude,
    int? type,
  })  : _name = name,
        _description = description,
        _image = image,
        _latitude = latitude,
        _longitude = longitude,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "latitude" field.
  int? _latitude;
  int get latitude => _latitude ?? 0;
  set latitude(int? val) => _latitude = val;
  void incrementLatitude(int amount) => _latitude = latitude + amount;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  int? _longitude;
  int get longitude => _longitude ?? 0;
  set longitude(int? val) => _longitude = val;
  void incrementLongitude(int amount) => _longitude = longitude + amount;
  bool hasLongitude() => _longitude != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;
  void incrementType(int amount) => _type = type + amount;
  bool hasType() => _type != null;

  static JsonResponseSEARCHStruct fromMap(Map<String, dynamic> data) =>
      JsonResponseSEARCHStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
        latitude: castToType<int>(data['latitude']),
        longitude: castToType<int>(data['longitude']),
        type: castToType<int>(data['type']),
      );

  static JsonResponseSEARCHStruct? maybeFromMap(dynamic data) => data is Map
      ? JsonResponseSEARCHStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'image': _image,
        'latitude': _latitude,
        'longitude': _longitude,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.int,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
      }.withoutNulls;

  static JsonResponseSEARCHStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      JsonResponseSEARCHStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.int,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'JsonResponseSEARCHStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JsonResponseSEARCHStruct &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, description, image, latitude, longitude, type]);
}

JsonResponseSEARCHStruct createJsonResponseSEARCHStruct({
  String? name,
  String? description,
  String? image,
  int? latitude,
  int? longitude,
  int? type,
}) =>
    JsonResponseSEARCHStruct(
      name: name,
      description: description,
      image: image,
      latitude: latitude,
      longitude: longitude,
      type: type,
    );
