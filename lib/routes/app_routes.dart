part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const initial = Paths.initial;
  static const home = Paths.home;
  static const login = Paths.login;
  static const signUp = Paths.signUp;
  static const appSettings = Paths.appSettings;
}

abstract class Paths {
  Paths._();

  static const String initial = '/';
  static const String home = '/';
  static const String login = '/login';
  static const String signUp = '/sign_up';
  static const String appSettings = '/app_settings';
}
