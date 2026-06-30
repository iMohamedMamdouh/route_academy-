import 'package:assigments_7/core/utils/app_colors.dart';
import 'package:assigments_7/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    this.validator,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    this.isPassword = false,
    super.key,
  });

  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscure = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      obscureText: _obscure,
      obscuringCharacter: AppString.obscuringCharacter,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                child: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
              )
            : null,

        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.hintTextColor,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintTextColor, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFEE403D), width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFEE403D), width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintTextColor, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
        fillColor: Color(0xFFD6DFF1).withAlpha(120),
      ),
      cursorColor: Colors.blue,
    );
  }
}
