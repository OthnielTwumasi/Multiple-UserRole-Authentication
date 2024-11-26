import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_user_role_authentication/theme_data.dart';
import 'package:multiple_user_role_authentication/views/login_page.dart';
import 'package:multiple_user_role_authentication/views/mobile_view.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MobileView(),
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme()
        ),);
  }
}
