import 'package:capi_restro/core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
          onPressed: () => context.pop(),
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
                'Sign up to continue',
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
              const SizedBox(height: 25),
              CustomButton(
                title: 'Sign up',
                btnColor: AppColors.primaryGreen,
                titleStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: AppColors.surfaceWhite,
                      fontWeight: FontWeight.w600,
                    ),
                // onTap: () => context.push(RoutePaths.bottomNavRoute.path),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account? ',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: AppColors.borderGrey,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: AppColors.primaryGreen,
                            fontWeight: FontWeight.w600,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.pop(),
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
