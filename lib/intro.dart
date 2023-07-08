import 'package:flutter/material.dart';
import 'package:physio_sathi/bottomnav.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(248, 217, 244, 227)),
                ),
                Container(
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(248, 217, 244, 227)),
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const Expanded(child: SizedBox()),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BottomNavBar()),
                          );
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(248, 217, 244, 227),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 20,
                      ),
                      const Text(
                        "Hola Ram",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(248, 217, 244, 227),
                  ),
                  child: Image.asset(
                    "assets/images/hola.png",
                  ),
                ),
                Container(
                  height: 70,
                  color: Colors.white,
                ),
                Container(
                  height: 40,
                  color: Colors.white,
                  child: const Text(
                    "Your Best Medical Assistant",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.white,
                  child: const Text(
                    "Only  just one tap away",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 705,
                  height: 17,
                  child: Image.asset(
                    "assets/images/slide.png",
                  ),
                ),
                Container(
                  height: 40,
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
                        MaterialPageRoute(builder: (context) => const BottomNavBar()),
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
