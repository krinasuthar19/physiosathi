import 'package:flutter/material.dart';
import 'package:physio_sathi/loginscreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isVisible = false;
  bool _numError = false;
  bool _nameError = false;
  bool _passwordError = false;

  late String val;
  int max = 10;

  @override
  void dispose() {
    _nameController.dispose();
    _numController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signup() {
    setState(() {
      _nameError = _nameController.text.isEmpty;
      _numError = _numController.text.isEmpty;
      _passwordError = _passwordController.text.isEmpty;
    });

    if (!_numError && !_passwordError) {
      // Perform signup logic here
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 390,
              child: Column(
                children: [
                  Container(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(width: 20),
                      IconButton(
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Container(width: 30),
                      Container(
                        width: 200,
                        alignment: Alignment.center,
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      const Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      const Text(
                        "Enter your Name, Phone Number and \nPassword for sign up.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(157, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 3,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      "Already have Account?",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 22, 114, 41),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      const Text(
                        "FULL NAME",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(125, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: _nameController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            errorText: _nameError == true
                                ? "Please Enter your full name"
                                : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      const Text(
                        "PHONE NUMBER",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(125, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: _numController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            errorText: _numError == true
                                ? "Enter valid Phone Number"
                                : null,
                            suffixIcon: _nameController.text.isNotEmpty
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      const Text(
                        "PASSWORD",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(125, 0, 0, 0),
                        ),
                      ),
                      Expanded(child: Container()),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible
                            ? const Icon(
                                Icons.visibility,
                                color: Colors.black,
                                size: 20,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                                size: 20,
                              ),
                      ),
                      Container(
                        width: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          controller: _passwordController,
                          obscureText: !_isVisible,
                          decoration: InputDecoration(
                            errorText: _passwordError
                                ? 'Please enter your Password'
                                : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                  SizedBox(
                    width: 335,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 18, 142, 64),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onPressed: _signup,
                      child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  const Text(
                    "By Signing up you agree to our Terms \n          Conditions & Privacy Policy.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  Container(
                    child: const Text(
                      "Or",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 335,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('assets/images/facebook.png'),
                        height: 30,
                      ),
                      label: const Text(
                        "CONNECT WITH FACEBOOK",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 30, 41, 106)),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 335,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('assets/images/google.png'),
                        height: 30,
                      ),
                      label: const Text(
                        "CONNECT WITH GOOGLE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 72, 114, 251)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
