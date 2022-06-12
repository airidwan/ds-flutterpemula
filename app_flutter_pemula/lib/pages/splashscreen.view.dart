import 'package:app_flutter_pemula/data/constants/assets.gen.dart';
import 'package:app_flutter_pemula/pages/login.view.dart';
import 'package:flutter/material.dart';

import 'dart:async';

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  State<SplashscreenView> createState() => _SplashscreenViewState();
}

class _SplashscreenViewState extends State<SplashscreenView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(Assets.icon.path),
            ),
            const SizedBox(
              width: 100.0,
              height: 100.0,
              child: CircularProgressIndicator(strokeWidth: 10),
            ),
          ],
        ),
      ),
    );
  }
}
