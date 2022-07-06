import '../models/app_config.dart';

//Packages
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class HTTPService {
  final Dio dio = Dio();
  final GetIt getIt = GetIt.instance;

  String? _base_url;
  String? _api_key;

  HTTPService() {
    _base_url = getIt.get<AppConfig>().BASE_API_URL;
    _api_key = getIt.get<AppConfig>().API_KEY;
  }

  Future<Response?> get(String _path, {Map<String, dynamic>? query}) async {
    try {
      return await dio.get('$_base_url$_path', queryParameters: query);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
