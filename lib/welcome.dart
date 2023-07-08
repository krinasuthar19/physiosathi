import 'package:flutter/material.dart';
import 'package:physio_sathi/loginscreen.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                height: 160,
              ),
              Image.asset("assets/images/PhysioSathi Logo 1.png"),
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto"),
              ),
              Container(
                height: 20,
              ),
              const Text(
                '"Restoring Hands, Rebuilding Lives."',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                height: 100,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
