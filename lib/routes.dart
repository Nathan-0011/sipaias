import 'package:flutter/material.dart';
import 'views/auth/login_page.dart';
import 'views/home/home_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/login': (context) => const LoginPage(),
  '/home': (context) => const HomePage(),
};
