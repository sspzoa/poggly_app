import 'package:dio/dio.dart';

class PGHttpResponse {
  dynamic data;

  PGHttpResponse({
    this.data,
  });

  factory PGHttpResponse.fromDioResponse(Response dioResponse) =>
      PGHttpResponse(
        data: dioResponse.data['data'],
      );
}
