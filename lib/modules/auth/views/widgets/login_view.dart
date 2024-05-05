import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipes_app/common/common.dart';
import 'package:recipes_app/modules/auth/auth.dart';
import 'package:recipes_app/routes/routes.dart';
import 'package:recipes_app/utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final GlobalKey<FormState> formKey;
  String _email = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          const CustomHeader(text: 'LOGIN', showBack: false),
          const SizedBox(height: Dimensions.paddingDefault),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: FadeInUp(
                child: Column(
                  children: [
                    const SizedBox(height: Dimensions.paddingMax),
                    EmailField(
                      onChanged: (value) => _email = value,
                    ),
                    const SizedBox(height: Dimensions.paddingDefault),
                    PasswordField(
                      onChanged: (value) => _password = value,
                    ),
                    const SizedBox(
                      height: Dimensions.paddingExtraLarge,
                    ),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return IgnorePointer(
                          ignoring: state is AuthSocialSignLoading,
                          child: PrimaryButton(
                            onPressed: () async {
                              final validated =
                                  formKey.currentState?.validate() ?? false;
                              if (!validated) return;
                              await cubit.loginUser(
                                email: _email,
                                password: _password,
                              );
                            },
                            loading: state is AuthLoading,
                            text: 'LOGIN',
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: Dimensions.paddingMax),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return IgnorePointer(
                          ignoring: state is AuthLoading,
                          child: GoogleSignButton(
                            onPressed: cubit.signWithGoogle,
                            loading: state is AuthSocialSignLoading,
                            text: 'SIGN IN WITH GOOGLE',
                            loadingText: 'SIGNING IN WITH GOOGLE...',
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: Dimensions.paddingDefault),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account yet?",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextButton(
                          onPressed: () => context.push(Routes.signUp),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.paddingDefault),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
