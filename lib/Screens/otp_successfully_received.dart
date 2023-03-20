import 'package:facesharkapp/Screens/information_page.dart';
import 'package:flutter/material.dart';

class OtpSucessfullyRecievedPage extends StatelessWidget {
  const OtpSucessfullyRecievedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/GreenTickgiff-unscreen.gif",
                  fit: BoxFit.contain,
                  width: 100,
                  height: 100,
                ),
                const Text("We have successfully received your OTP  "),
                const Text(" Kindly click the continue button"),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InformationPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: const Text("Continue"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
