import 'package:capi_restro/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_text_field/otp_text_field.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  late OtpFieldController _pinController;
  @override
  void initState() {
    _pinController = OtpFieldController();
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
                'Verify your Mobile',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.iconBlack,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                'Enter your OTP code here',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.borderGrey,
                    ),
              ),
              const SizedBox(height: 10),
              OTPTextField(
                controller: _pinController,
                width: MediaQuery.of(context).size.width / 1.6,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                onCompleted: (pin) {},
                onChanged: (pin) {},
              ),
              const SizedBox(height: 30),
              CustomButton(
                title: 'Verify Now',
                btnColor: AppColors.primaryGreen,
                titleStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: AppColors.surfaceWhite,
                      fontWeight: FontWeight.w600,
                    ),
                onTap: () => context.push(RoutePaths.changePasswordRoute.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
