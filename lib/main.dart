// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'Screens/accout_set_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Load the Splash Screen
        title: "Faceshark",
        home: AnimatedSplashScreen(
            duration: 300,
            splash: Image.asset("images/faceShark splashScreen Icon.png"),
            nextScreen: const MainScreen(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.white // Will work
            ));
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: DecoratedBox(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/pexels-anna-shvets-4557403.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                          fontFamily: "Ubuntu-Bold"),
                      "Welcome to faceSark"),
                  const Text(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      "This faceShark your number 1 trusted and "),
                  const Text(
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      "realiable helping agency , Let help you with "),
                  const Text(
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      " your need."),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountSetUp()));
                    },
                    child: const Text("Continue"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
