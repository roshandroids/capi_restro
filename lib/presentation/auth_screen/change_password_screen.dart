import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  @override
  void initState() {
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
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
                'Change your password',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.iconBlack,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                'Set your new password',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.borderGrey,
                    ),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: _passwordController,
                hintText: 'New Password',
                validator: Validators.passwordValidator,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                controller: _confirmPasswordController,
                hintText: 'Confirm Password',
                validator: (value) => Validators.passwordValidator(
                  _passwordController.text,
                  confirmValue: value,
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 30),
              CustomButton(
                title: 'Submit',
                btnColor: AppColors.primaryGreen,
                titleStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: AppColors.surfaceWhite,
                      fontWeight: FontWeight.w600,
                    ),
                onTap: () => context.go(RoutePaths.loginRoute.path),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
