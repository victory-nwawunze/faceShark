import 'package:facesharkapp/Screens/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'login_page.dart';

class AccountSetUp extends StatelessWidget {
  const AccountSetUp({super.key});

  @override
  Widget build(BuildContext context) {
    var color = HexColor("FFFFFF");
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: color),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/faceShark-Login-giff-unscreen.gif"),
                const Text(
                    style: TextStyle(fontSize: 24), "We really appreciate you"),
                RichText(
                  text: const TextSpan(
                    // style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: "stopping by, kindly",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      TextSpan(
                        text: "login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      TextSpan(
                        text: "to",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "your account, if you dont ",
                  style: TextStyle(fontSize: 18),
                ),
                const Text(
                  "have an account you can create",
                  style: TextStyle(fontSize: 15),
                ),
                // const Text(
                //   "here",
                //   style: TextStyle(fontSize: 15, color: Colors.red),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text("Sign-In"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                      child: const Text("Sign-Up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
