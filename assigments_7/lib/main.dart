import 'package:assigments_7/core/utils/app_routes.dart';
import 'package:assigments_7/home/presentation/views/home_screen.dart';
import 'package:assigments_7/login/presentation/views/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Facebook());
}

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.home: (context) => HomeScreen(),
        AppRoutes.login: (context) => LoginScreen(),
      },
    );
  }
}
