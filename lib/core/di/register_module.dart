import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes_app/core/core.dart';

@module
abstract class RegisterModule {
  Dio get dio {
    return Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
        contentType: 'application/json',
      ),
    );
  }
}
