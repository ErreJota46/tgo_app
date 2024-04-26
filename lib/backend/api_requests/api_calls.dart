import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BusquedaCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'busqueda',
      apiUrl:
          'https://gghenqorrhhhhiddmrfq.supabase.co/rest/v1/tourist_places?name=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descripcion(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? ubicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idTouristPlaces(dynamic response) => (getJsonField(
        response,
        r'''$[:].idTouristPlaces''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? qr(dynamic response) => getJsonField(
        response,
        r'''$[:].qr_code''',
        true,
      ) as List?;
  static List<String>? tipoNom(dynamic response) => (getJsonField(
        response,
        r'''$[:].type_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BusquedaCompletaCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
    String? searchType = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'busquedaCompleta',
      apiUrl:
          'https://gghenqorrhhhhiddmrfq.supabase.co/rest/v1/tourist_places?select=*&name=ilike.*$searchString*&type_name=ilike.*$searchType*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descripcion(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? ubicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idTouristPlaces(dynamic response) => (getJsonField(
        response,
        r'''$[:].idTouristPlaces''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? qr(dynamic response) => getJsonField(
        response,
        r'''$[:].qr_code''',
        true,
      ) as List?;
  static List<String>? tipoNom(dynamic response) => (getJsonField(
        response,
        r'''$[:].type_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BusquedaTipoCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'busquedaTipo',
      apiUrl:
          'https://gghenqorrhhhhiddmrfq.supabase.co/rest/v1/types_places?nameTipo=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descripcion(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$[:].image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? ubicacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].location''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idTouristPlaces(dynamic response) => (getJsonField(
        response,
        r'''$[:].idTouristPlaces''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? qr(dynamic response) => getJsonField(
        response,
        r'''$[:].qr_code''',
        true,
      ) as List?;
  static List<String>? tipoNom(dynamic response) => (getJsonField(
        response,
        r'''$[:].type_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SavedCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'saved',
      apiUrl:
          'https://gghenqorrhhhhiddmrfq.supabase.co/rest/v1/tourist_places?saved=eq.true&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdnaGVucW9ycmhoaGhpZGRtcmZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcxNTM2ODYsImV4cCI6MjAyMjcyOTY4Nn0.nDK3xnjP-VAJ91mlfy0DXJ2LHGouUutOVxO_4CjemKs',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
