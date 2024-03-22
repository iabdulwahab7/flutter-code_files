// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldView extends StatefulWidget {
  const TextFieldView({super.key});

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color(0xff00DCFB).withOpacity(0.8),
                const Color(0xff51F5CED).withOpacity(0.6)
              ], begin: Alignment.bottomCenter)),
              alignment: Alignment.topLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontSize: 38, fontFamily: "Jakarta-SemiBold"),
                    ),
                    Text(
                      "Signin to continue your journey!",
                      style: TextStyle(
                          fontSize: 16, fontFamily: "Jakarta-Regular"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    prefixIcon: Container(
                      width: 42,
                      child: Row(
                        children: [
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.email_outlined,
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ],
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Colors.green.withOpacity(0.8),
                          width: 1,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.8, color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hoverColor: Colors.green),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: TextField(
                controller: passwordController,
                obscureText: passObsecure,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Container(
                    width: 42,
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        const Icon(
                          Icons.lock_open_outlined,
                          size: 24,
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 30,
                          width: 2,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passObsecure = !passObsecure;
                        });
                      },
                      child: Icon(passObsecure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.green.withOpacity(0.8),
                        width: 0.5,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontFamily: "Jakarta-Regular",
                          color: Color(0xff51F5CED)),
                    )),
              ),
            ),
            const SizedBox(height: 150),
            Container(
              height: 55,
              width: 330,
              decoration: BoxDecoration(
                color: const Color(0xff51F5CED).withOpacity(0.8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: "Jakarta-SemiBold",
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.6)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Jakarta-Regular",
                    )),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        fontSize: 24,
                        fontFamily: "Jakarta-SemiBold",
                        color: Color(0xff51F5CED).withOpacity(0.6)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
