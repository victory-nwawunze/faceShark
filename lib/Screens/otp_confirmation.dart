import 'package:facesharkapp/Screens/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

import 'otp_input_field.dart';

class ConfirmOTP extends StatelessWidget {
  const ConfirmOTP({super.key});

  @override
  Widget build(BuildContext context) {
    var bGColor = HexColor("7A4AFF");
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: bGColor),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "images/CheckOTP-unscreen.gif",
                  fit: BoxFit.contain,
                  width: 600,
                  height: 300,
                ),
                // const SizedBox(
                //   height: 40,
                // ),
                const Text.rich(
                  TextSpan(
                    text: 'Kindly check your mail', // default text style
                    children: <TextSpan>[
                      TextSpan(
                          text: ' To confirm your OTP ',
                          style: TextStyle(fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
                const Text.rich(
                  TextSpan(
                    text: 'or', // default text style
                    children: <TextSpan>[
                      TextSpan(
                        text: ' resend ',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontFamily: "Ubuntu-Bold",
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                        child: const Text("Back"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OtpInputField(),
                            ),
                          );
                        },
                        child: const Text("Continue"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
