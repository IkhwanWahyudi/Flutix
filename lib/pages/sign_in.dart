import 'package:flutix/auth.dart';
import 'package:flutix/pages/home_movies.dart';
import 'package:flutix/pages/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isPasswordVisible = false;
  bool isFilled = false;
  bool isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  handleSubmit() async {
    final email = _emailController.value.text;
    final password = _passwordController.value.text;
    setState(() => isLoading = true);
    try {
      // Mencoba untuk signin
      await Auth().login(email, password);
      // Jika signin berhasil, navigasikan ke halaman BottomNavigation
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Login Error'),
            content: const Text(
                'Email atau Password tidak valid. Silakan coba lagi.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
      // ignore: avoid_print
      print('Error Saat Sign In: $e');
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Logo.jpg"),
                      ),
                    ),
                  ),
                  const Text("Welcome back,"),
                  const Text("Explorer!"),
                  const SizedBox(height: 15),
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                        color: Colors.yellow,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 1.0,
                        ),
                      ),
                    ),
                    onChanged: (value) {  
                      setState(() {
                        isFilled = value.isNotEmpty &&
                            value.contains('@') &&
                            _passwordController.text.isNotEmpty;
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: _passwordController,
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        color: Colors.yellow,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 1.0,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        isFilled = value.isNotEmpty &&
                            _emailController.text.isNotEmpty &&
                            _emailController.text.contains('@');
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Continue to Sign In",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      GestureDetector(
                        child: Container(
                          width: 47,
                          height: 47,
                          decoration: BoxDecoration(
                            color: isFilled
                                ? const Color(0xFF503E9D)
                                : const Color(0xFFD9D9D9),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(47)),
                          ),
                          child: isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                        ),
                        onTap: () async {
                          if (isFilled) {
                            handleSubmit();
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Start fresh now? ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFC7C7C7))),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SignUp(), // Navigasi ke kendaraan
                          ),
                        );
                      },
                      child: const Text("Sign Up",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1804FB)))),
                ],
              )
            ],
          )),
    );
  }
}
