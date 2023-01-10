import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_notes_app/config.dart';
import 'package:todo_notes_app/constants.dart';
import 'package:todo_notes_app/models/app_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

part 'app_interceptors.dart';

class DioClient {
  static DioClient? _singleton;

  final Dio dio = createDioClient();

  DioClient._internal();

  factory DioClient() {
    return _singleton ??= DioClient._internal();
  }

  static Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseApiUrl,
        receiveTimeout: 15000, // 15 seconds
        connectTimeout: 15000,
        sendTimeout: 15000,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
        },
      ),
    );

    dio.interceptors.addAll([
      if (Config.DIO_CLIENT_DEBUG_LOG)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          maxWidth: 90,
        ),
    ]);
    return dio;
  }
}
