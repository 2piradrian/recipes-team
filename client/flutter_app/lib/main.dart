import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/register_screen.dart';
import 'package:flutter_app/screens/welcome_screen.dart';
import 'package:flutter_app/style/app_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes team',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppStyles.kMainColor,
        secondary: AppStyles.kSecondaryColor,
      )),
      initialRoute: '/welcome',
      routes: {
        '/': (context) => const HomePage(),
        '/welcome': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
