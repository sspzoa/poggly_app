import 'package:dio/dio.dart';

class PogglyHttpResponse {
  dynamic data;

  PogglyHttpResponse({
    this.data,
  });

  factory PogglyHttpResponse.fromDioResponse(Response dioResponse) =>
      PogglyHttpResponse(
        data: dioResponse.data['data'],
      );
}
