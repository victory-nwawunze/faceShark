import 'package:facesharkapp/Screens/otp_confirmation.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
              child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              "images/faceShark-user-Login-giff-unscreen.gif",
              fit: BoxFit.contain,
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 290,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email',
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 290,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password',
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ConfirmOTP(),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ])),
        ),
      ),
    );
  }
}
