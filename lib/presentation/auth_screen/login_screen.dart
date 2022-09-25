import 'package:capi_restro/application/auth_controller.dart';
import 'package:capi_restro/core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late bool _showPassword;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _showPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.surfaceWhite,
        leading: IconButton(
          splashColor: AppColors.transparent,
          focusColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
          onPressed: () => context.pop(),
          icon: const Icon(
            Ionicons.chevron_back_outline,
            color: AppColors.iconBlack,
          ),
        ),
      ),
      body: AbsorbPointer(
        absorbing: authState.loading,
        child: InkWell(
          splashFactory: NoSplash.splashFactory,
          splashColor: AppColors.transparent,
          focusColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to\nCapi Restaurant',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.iconBlack,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Sign in to continue',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.borderGrey,
                      ),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  validator: Validators.emailValidator,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: _showPassword,
                  validator: Validators.passwordValidator,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                    child: Icon(
                      _showPassword
                          ? Ionicons.eye_off_outline
                          : Ionicons.eye_outline,
                      color: AppColors.borderGrey,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () =>
                        context.push(RoutePaths.forgetpasswordRoute.path),
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryGreen,
                          ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  isLoading: authState.loading,
                  title: 'Login',
                  btnColor: AppColors.primaryGreen,
                  titleStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: AppColors.surfaceWhite,
                        fontWeight: FontWeight.w600,
                      ),
                  onTap: () => context.push(RoutePaths.homeRoute.path),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'New to Capi Restaurant? ',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: AppColors.borderGrey,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      TextSpan(
                        text: 'Signup',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: AppColors.primaryGreen,
                              fontWeight: FontWeight.w600,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => context.push(RoutePaths.signupRoute.path),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
