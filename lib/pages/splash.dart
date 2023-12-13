import 'package:flutix/pages/sign_in.dart';
import 'package:flutix/pages/sign_up.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SplashPage> {
  bool signinPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 200),
          Container(
            width: 300,
            height: 119,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Logo.jpg"),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text("New Experience",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              )),
          const SizedBox(height: 15),
          const Text(
            "Watching new movie much",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(80,0,0,0),
            ),
          ),
          const Text("easier than any before",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 16,
                  color: Color.fromARGB(80,0,0,0))),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFFDAA520),
                  backgroundColor: const Color(0xFF503E9D),
                  padding: const EdgeInsets.symmetric(horizontal: 120.0),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignUp();
                  }));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign in To ",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 13,
                  color: Color.fromARGB(255, 134, 134, 134),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    signinPressed = !signinPressed;
                  });
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const SignIn();
                  }));
                },
                child: Text(
                  "My Account",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: signinPressed
                        ? const Color(0xFFC7C7C7)
                        : const Color(0xFF1804FB),
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 80),
        ],
      )),
    );
  }
}