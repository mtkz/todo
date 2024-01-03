import 'package:dio/dio.dart';

final Dio dioInstance = Dio(
  BaseOptions(
    responseType: ResponseType.json,
  ),
);
