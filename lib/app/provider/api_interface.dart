import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:poggly_app/app/provider/model/response.dart';

abstract class ApiProvider {
  final Dio dio = Dio();

  Future<PogglyHttpResponse> get(String path,
      {Map<String, dynamic>? queryParameters, Options? options}) async {
    Response dioResponse =
        await dio.get(path, queryParameters: queryParameters, options: options);
    return PogglyHttpResponse.fromDioResponse(dioResponse);
  }

  Future<Stream<Map<String, dynamic>>> getStream(String path) async {
    Response<ResponseBody> dioResponse = await dio.get(
      path,
      options: Options(
        headers: {"Accept": "text/event-stream"},
        responseType: ResponseType.stream,
      ),
    );
    return dioResponse.data!.stream.transform(
      StreamTransformer.fromHandlers(
        handleData: (rawdata, sink) {
          String strData = String.fromCharCodes(rawdata);
          String formatedData =
              strData.substring(strData.indexOf('{'), strData.indexOf('}') + 1);
          Map<String, dynamic> data = json.decode(formatedData);

          sink.add(data);
        },
      ),
    );
  }

  Future<PogglyHttpResponse> delete(String path, {dynamic data}) async {
    Response dioResponse = await dio.delete(path, data: data);
    return PogglyHttpResponse.fromDioResponse(dioResponse);
  }

  Future<PogglyHttpResponse> post(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options}) async {
    Response dioResponse = await dio.post(path,
        data: data, queryParameters: queryParameters, options: options);
    return PogglyHttpResponse.fromDioResponse(dioResponse);
  }

  Future<PogglyHttpResponse> patch(String path, {dynamic data}) async {
    Response dioResponse = await dio.patch(path, data: data);
    return PogglyHttpResponse.fromDioResponse(dioResponse);
  }

  Future<PogglyHttpResponse> put(String path,
      {dynamic data, Options? options}) async {
    Response dioResponse = await dio.put(path, data: data, options: options);
    return PogglyHttpResponse.fromDioResponse(dioResponse);
  }
}
