import 'package:dio/dio.dart';

final dio = Dio();

void getHttp(String url) async {
  final response = await dio.get(url);
  print(response);
}
