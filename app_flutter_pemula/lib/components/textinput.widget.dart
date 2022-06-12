// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables

import 'package:app_flutter_pemula/data/constants/assets.gen.dart';
import 'package:app_flutter_pemula/pages/home.view.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TextinputWidget extends StatefulWidget {
  const TextinputWidget({Key? key}) : super(key: key);

  @override
  State<TextinputWidget> createState() => _TextinputWidgetState();
}

class _TextinputWidgetState extends State<TextinputWidget> {
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: <Widget>[
            Image.asset(
              Assets.icon.path,
              alignment: Alignment.center,
              width: 26,
              height: 26,
            ),
            18.heightBox,
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end, // start at end/bottom of column
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'DICODING APPS',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  20.heightBox,
                  ElevatedButton.icon(
                    onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Dicoding Course')),
                      );
                    },
                    icon: Icon(Icons.system_update_alt_sharp, size: 18),
                    label: Text("L O G I N"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
