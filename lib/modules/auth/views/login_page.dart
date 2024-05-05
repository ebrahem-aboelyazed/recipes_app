import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app/modules/auth/auth.dart';
import 'package:recipes_app/routes/routes.dart';
import 'package:recipes_app/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              failure: context.showErrorSnackBar,
              loggedIn: () => context.go(Routes.home),
            );
          },
          child: const LoginView(),
        ),
      ),
    );
  }
}
