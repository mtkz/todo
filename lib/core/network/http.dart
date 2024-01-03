import 'package:dio/dio.dart';

final Dio dioInstance = Dio(
  BaseOptions(
    baseUrl: "https://run.mocky.io/v3/",
    responseType: ResponseType.json,
  ),
);
