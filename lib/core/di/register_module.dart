import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
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

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  GoogleSignIn get googleSignIn => GoogleSignIn();
}
