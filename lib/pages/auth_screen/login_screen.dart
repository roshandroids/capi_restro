import 'package:capi_restro/core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    return Scaffold(
      backgroundColor: AppColors.surfaceWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.surfaceWhite,
        leading: IconButton(
          splashColor: AppColors.transparent,
          focusColor: AppColors.transparent,
          highlightColor: AppColors.transparent,
          onPressed: () => context.goNamed(RoutePaths.landingRoute.routeName),
          icon: const Icon(
            Ionicons.chevron_back_outline,
            color: AppColors.iconBlack,
          ),
        ),
      ),
      body: InkWell(
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                validator: (value) => Validators.emailValidator(value),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _passwordController,
                hintText: 'Password',
                obscureText: _showPassword,
                validator: (value) => Validators.passwordValidator(value),
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
                    )),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () =>
                      context.goNamed(RoutePaths.forgetpasswordRoute.routeName),
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
                title: 'Login',
                btnColor: AppColors.primaryGreen,
                titleStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: AppColors.surfaceWhite,
                      fontWeight: FontWeight.w600,
                    ),
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
                        ..onTap = () => context.go(RoutePaths.signupRoute.path),
                    ),
                  ],
                ),
              ),
            ],
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
