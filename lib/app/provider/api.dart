import 'api_interface.dart';
import 'interceptors/log.dart';

class DevApiProvider extends ApiProvider {
  final baseUrl = 'https://api.sspzoa.io';

  DevApiProvider() {
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(LogInterceptor());
  }
}
