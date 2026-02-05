import 'package:flutter/material.dart';

// IMPORT HALAMAN-HALAMAN
import 'views/auth/login_page.dart';
import 'views/auth/lupa_password_page.dart';
import 'views/auth/otp_page.dart';
import 'views/auth/reset_password_page.dart';
import 'views/home/home_page.dart';
import 'views/pembayaran/pilih_pembayaran_page.dart';
import 'views/pembayaran/pembayaran_tunai_page.dart';


// ROUTES
final Map<String, WidgetBuilder> appRoutes = {
  '/login': (context) => const LoginPage(),
  '/home': (context) => const HomePage(),
  '/lupa-password': (context) => const LupaPasswordPage(),
  '/otp': (context) => const OtpPage(),
  '/reset-password': (context) => const ResetPasswordPage(),
  '/pilih-pembayaran': (context) => const PilihPembayaranPage(),
  '/pembayaran-tunai': (context) => const PembayaranTunaiPage(),
};
