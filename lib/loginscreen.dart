import 'package:flutter/material.dart';
import 'package:physio_sathi/intro.dart';
import 'package:physio_sathi/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _numController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isVisible = false;
  bool _numError = false;
  bool _passwordError = false;

  late String val;
  int max = 10;

  @override
  void dispose() {
    _numController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signup() {
    setState(() {
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
                        "Sign In",
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
                      "Welcome to",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "H.I.R.E",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                  height: 60,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "Let’s get signed in",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(157, 0, 0, 0),
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
                      "Phone Number",
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
                    Container(
                      width: 300,
                      child: TextField(
                        controller: _numController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          errorText: _numError == true
                              ? "Enter valid Phone Number"
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
                      "Password",
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
                    Container(
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
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 18, 142, 64),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Intro()),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have Account?",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      },
                      child: const Text(
                        "Create new Account.",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 22, 114, 41),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                  child: Text(
                    "Or",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  height: 50,
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
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  height: 50,
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
                Container(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
