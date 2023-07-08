import 'package:flutter/material.dart';

class InjuryDetails extends StatefulWidget {
  const InjuryDetails({super.key});

  @override
  State<InjuryDetails> createState() => _InjuryDetailsState();
}

class _InjuryDetailsState extends State<InjuryDetails> {
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
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    SizedBox(
                      width: 50,
                      child: Image.asset("assets/images/profile.png"),
                    ),
                    const Text(
                      "My Account",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      icon: Image.asset("assets/images/menu.png"),
                      onPressed: () {},
                    ),
                    Container(
                      width: 20,
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 255, 224),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/doc.jpg",
                            height: 80,
                          ),
                        ),
                        Container(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Text(
                                "Introduction",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                          ],
                        ),
                        Container(
                          width: 13,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.chevron_right,
                                size: 35,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 255, 224),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/hand.jpg",
                            height: 80,
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Text(
                                "Know about your\n anatomy of your \nhand and injury",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.chevron_right,
                                size: 35,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 255, 224),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/splint.jpeg",
                            height: 80,
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Text(
                                "Instruction for\nsplint care",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.chevron_right,
                                size: 35,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 211, 255, 224),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/hands.jpeg",
                            height: 80,
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Text(
                                "Hand \nExercises",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            Container(
                              height: 5,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              child: const Icon(
                                Icons.chevron_right,
                                size: 35,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
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
