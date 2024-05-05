import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:recipes_app/core/core.dart';
import 'package:recipes_app/modules/auth/auth.dart';
import 'package:recipes_app/modules/home/home.dart';

part 'app_routes.dart';

@Singleton()
class AppPages {
  AppPages();

  final initial = Routes.initial;

  late final router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final path = state.fullPath;
      final authService = getIt.get<AuthService>();
      final user = authService.currentUser;
      final canAuth = path != Paths.login && path != Paths.signUp;

      if (user == null && canAuth) {
        return Paths.login;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: Routes.signUp,
        builder: (context, state) => const SignUpPage(),
      ),
    ],
  );
}
