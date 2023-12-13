import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix/auth.dart';
import 'package:flutix/pages/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordVisible = false;
  bool isFilled = false;
  bool isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  handleSubmit() async {
    final email = _emailController.value.text;
    final password = _passwordController.value.text;
    setState(() => isLoading = true);
    try {
      // Mencoba untuk registrasi
      await Auth().regis(email, password);

      // Jika registrasi berhasil, tampilkan dialog sukses
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Sign Up Success'),
            content:
                const Text('Your account has been successfully registered!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _fnameController.text = "";
                  _emailController.text = "";
                  _passwordController.text = "";
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } catch (e) {
      // ignore: avoid_print
      print('Error saat registrasi: $e');
      setState(() => isLoading = false);

      // Check if the error is due to an existing email address
      if (e is FirebaseAuthException && e.code == 'email-already-in-use') {
        // Show a dialog indicating that the email is already in use
        // ignore: use_build_context_synchronously
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Sign Up Failed'),
              content: const Text(
                  'The email has already been used. Please use another email.'),
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
      }
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
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Create your account",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Raleway',
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 120,
                                width: 100,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.person_rounded,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 12,
                                      right: 40,
                                      child: Container(
                                        width: 19,
                                        height: 19,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Text(
                                          "X",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: _fnameController,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
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
                            _passwordController.text.isNotEmpty &&
                            _passwordController.text.length >= 6 &&
                            _emailController.text.isNotEmpty &&
                            _emailController.text.contains('@');
                      });
                    },
                  ),
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
                            _passwordController.text.isNotEmpty &&
                            _passwordController.text.length >= 6 &&
                            _fnameController.text.isNotEmpty;
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
                            value.length >= 6 &&
                            _fnameController.text.isNotEmpty &&
                            _emailController.text.isNotEmpty &&
                            _emailController.text.contains('@');
                      });
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Continue to Sign Up",
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
                        onTap: () {
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
                  const Text("Already have an account? ",
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
                              const SignIn(), // Navigasi ke kendaraan
                        ),
                      );
                    },
                    child: const Text("Sign In",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF1804FB))),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
