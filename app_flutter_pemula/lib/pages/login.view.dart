// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables

import 'package:app_flutter_pemula/data/constants/assets.gen.dart';
import 'package:app_flutter_pemula/pages/home.view.dart';
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

  // bool get buttonEnable => (userNameController.text.isNotEmpty && passwordController.text.isNotEmpty);
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
                    // Text(
                    //   'LOGIN',
                    //   style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.w500),
                    // ),

                    25.heightBox,
                    _textInput(userNameController, hintText: 'Username', onchanged: (value) => onTextChanged(value)),
                    16.heightBox,
                    _textInput(passwordController, hintText: 'Password',obscureText: true, onchanged: (value) => onTextChanged(value)),
                    20.heightBox,
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton.icon(
                        onPressed: !buttonEnable
                            ? null
                            : () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Dicoding Course')),
                                );
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

  Widget _textInput(TextEditingController txtController, {String? hintText, bool obscureText = false, ValueChanged<String>? onchanged}) {
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
