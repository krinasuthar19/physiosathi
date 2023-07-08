import 'package:flutter/material.dart';

class Nortification extends StatefulWidget {
  const Nortification({super.key});

  @override
  State<Nortification> createState() => _NortificationState();
}

class _NortificationState extends State<Nortification> {
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
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Container(
                      width: 80,
                    ),
                    const Text(
                      "Nortification",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/pslogo.png"),
                      ),
                      Container(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. ",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "1m ago",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/Ellipse 47.png"),
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/pslogo.png"),
                      ),
                      Container(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. ",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "1m ago",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/Ellipse 47.png"),
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/pslogo.png"),
                      ),
                      Container(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. ",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "1m ago",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/Ellipse 47.png"),
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/pslogo.png"),
                      ),
                      Container(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. ",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "1m ago",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/Ellipse 47.png"),
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 20),
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/pslogo.png"),
                      ),
                      Container(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. ",
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "1m ago",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 20,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/Ellipse 47.png"),
                            color: Color.fromARGB(255, 255, 0, 0),
                            size: 20,
                          ),
                        ],
                      ),
                    ],
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
