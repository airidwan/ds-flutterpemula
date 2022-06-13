import 'package:app_flutter_pemula/pages/splashscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_configs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicoding Course',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.primaryMaterialColor,
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      // home: const MyHomePage(title: 'Dicoding Course'),
      home: const SplashscreenView(),
    );
  }
}


