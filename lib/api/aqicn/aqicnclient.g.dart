// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aqicnclient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AqicnClient implements AqicnClient {
  _AqicnClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getStationFeedByLatLng(lat, lng) async {
    ArgumentError.checkNotNull(lat, 'lat');
    ArgumentError.checkNotNull(lng, 'lng');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'feed/geo:$lat;$lng/?token=11c5b5b6f4ce91bc8cc0d4c3d9c8c6eb24b17489',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = StationFeed.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getStationFeed(station) async {
    ArgumentError.checkNotNull(station, 'station');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'feed/$station/?token=11c5b5b6f4ce91bc8cc0d4c3d9c8c6eb24b17489',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = StationFeed.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  searchStation(keyword) async {
    ArgumentError.checkNotNull(keyword, 'keyword');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{'keyword': keyword};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'feed/search/?token=11c5b5b6f4ce91bc8cc0d4c3d9c8c6eb24b17489',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = StationFeed.fromJson(_result.data);
    return Future.value(value);
  }
}
