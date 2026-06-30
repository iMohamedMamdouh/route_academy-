import 'package:assigments_7/core/utils/app_colors.dart';
import 'package:assigments_7/core/utils/app_images.dart';
import 'package:assigments_7/core/utils/app_routes.dart';
import 'package:assigments_7/core/utils/app_string.dart';
import 'package:assigments_7/login/presentation/widgets/custom_app_button.dart';
import 'package:assigments_7/login/presentation/widgets/custom_text_form_filed.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Image.asset(
                      AppImages.facebookLogo,
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(height: 56),
                    CustomTextFormField(
                      hintText: AppString.emailHintText,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        }
                        final emailRegex = RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                        );
                        if (!emailRegex.hasMatch(value)) {
                          return "Enter a valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    CustomTextFormField(
                      hintText: AppString.passwordHintText,
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    CustomAppButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.home,
                          );
                        }
                      },
                      buttonText: AppString.loginButtonText,
                      backgroundColor: AppColors.backgroundLoginButton,
                    ),
                    SizedBox(height: 24),
                    Text(
                      AppString.forgotPasswordTesxt,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.hintTextColor,
                      ),
                    ),
                    SizedBox(height: 250),

                    CustomAppButton(
                      onPressed: () {},
                      buttonText: AppString.createAccountButtonText,
                      backgroundColor: AppColors.backgroundCreateAccountButton,
                      textColor: AppColors.textCreateAccountButton,
                    ),
                    SizedBox(height: 10),
                    Image.asset(AppImages.metaLogo, height: 36, width: 120),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
