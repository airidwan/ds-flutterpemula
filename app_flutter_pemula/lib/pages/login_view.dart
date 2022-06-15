// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables

import 'package:app_flutter_pemula/data/constants/assets.gen.dart';
import 'package:app_flutter_pemula/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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

  bool buttonEnable = false;

  void onTextChanged(String value) {
    if (userNameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      setState(() {
        buttonEnable = true;
      });
    } else {
      setState(() {
        buttonEnable = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: <Widget>[
              'DICODING APPS'.text.bold.size(20).make(),
              10.heightBox,
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Assets.icon.path,
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                ),
              ),
              18.heightBox,
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    25.heightBox,
                    TextInputWidget(txtController: userNameController, hintText: 'Username', onchanged: (value) => onTextChanged(value)),
                    16.heightBox,
                    TextInputWidget(txtController: passwordController, hintText: 'Password', obscureText: true, onchanged: (value) => onTextChanged(value)),
                    20.heightBox,
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton.icon(
                        onPressed: !buttonEnable
                            ? null
                            : () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView(title: 'Dicoding Course')));
                              },
                        icon: Icon(Icons.system_update_alt_sharp, size: 18),
                        label: Text("L O G I N"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputWidget extends StatelessWidget {
  final TextEditingController txtController;
  final String? hintText;
  final bool obscureText;
  final ValueChanged<String>? onchanged;
  const TextInputWidget({Key? key, required this.txtController, this.hintText, this.obscureText = false, this.onchanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 45, width: 300),
      child: TextField(
        controller: txtController,
        autofocus: false,
        obscureText: obscureText,
        onChanged: onchanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
          hintText: hintText,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none, width: 0.0),
            borderRadius: BorderRadius.all(
              Radius.circular(3),
            ),
          ),
        ),
      ),
    );
  }
}
