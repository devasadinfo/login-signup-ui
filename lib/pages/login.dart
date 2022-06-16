import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secure = true;
  @override
  Widget build(BuildContext context) {
    final siteheight = MediaQuery.of(context).size.height;

    final sitewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //circle Avatar Area
              Container(
                padding: EdgeInsets.only(top: 50),
                height: siteheight * 0.30,
                child: const FittedBox(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/food_bg.jpg"),
                  ),
                ),
              ),

              //Login Site Area
              Container(
                height: siteheight * 0.70,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder: (context, constrainst) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login Now",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: constrainst.maxHeight * 0.06,
                        ),
                        Container(
                          height: constrainst.maxHeight * 0.10,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'example@gmail.com',
                                  hintStyle: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constrainst.maxHeight * 0.03,
                        ),
                        Container(
                          height: constrainst.maxHeight * 0.10,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Center(
                              child: TextField(
                                obscureText: _secure,
                                obscuringCharacter: '*',
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: const TextStyle(fontSize: 20),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _secure = !_secure;
                                      });
                                    },
                                    icon: Icon(_secure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot Password",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: constrainst.maxHeight * 0.05,
                        ),
                        Container(
                          width: double.infinity,
                          height: constrainst.maxHeight * 0.10,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constrainst.maxHeight * 0.03,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Don\'t have an Account!',
                            children: [
                              TextSpan(
                                text: ' Register',
                                style: const TextStyle(
                                  color: Colors.red,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
