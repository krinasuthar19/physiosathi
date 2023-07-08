import 'package:flutter/material.dart';
import 'package:physio_sathi/appointment.dart';
import 'package:physio_sathi/chat.dart';
import 'package:physio_sathi/exerciseplan.dart';
import 'package:physio_sathi/graph.dart';
import 'package:physio_sathi/injurydetails.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "Hello,",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
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
                      "Ram Laxman",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 50,
                      height: 20,
                      child: Image.asset("assets/images/hi.png"),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                      ),
                      SizedBox(
                        height: 170,
                        width: 130,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(179, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LineChartSample5()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                              ),
                              const ImageIcon(
                                AssetImage("assets/images/call.png"),
                                color: Colors.white,
                                size: 40,
                              ),
                              Container(
                                height: 60,
                              ),
                              const Text(
                                "Call",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              const Text(
                                "Treating Unit",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 216, 216, 216)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                      SizedBox(
                        height: 170,
                        width: 130,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 62, 82, 170),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChatScreen()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                              ),
                              const ImageIcon(
                                AssetImage('assets/images/chat (2).png'),
                                color: Colors.white,
                                size: 40,
                              ),
                              Container(
                                height: 60,
                              ),
                              const Text(
                                "Message",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              const Text(
                                "Treating Unit",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 216, 216, 216)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                      SizedBox(
                        height: 170,
                        width: 130,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 48, 49, 66),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Appointment()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10,
                              ),
                              const Icon(
                                Icons.calendar_month,
                                size: 40,
                              ),
                              Container(
                                height: 60,
                              ),
                              const Text(
                                "Appointment",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              const Text(
                                "Treating Unit",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 216, 216, 216)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                    ),
                    const Text(
                      "Hasil Medical Check-up",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 230, 241, 241),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InjuryDetails()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 5,
                        ),
                        const Icon(
                          Icons.water_drop,
                          color: Colors.red,
                          size: 20,
                        ),
                        Container(
                          width: 10,
                        ),
                        const Text(
                          "Your Injury Details",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(child: Container()),
                        const Icon(
                          Icons.chevron_right,
                          color: Color.fromARGB(255, 21, 188, 197),
                          size: 20,
                        ),
                      ],
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
                      backgroundColor: const Color.fromARGB(255, 230, 241, 241),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExercisePlan()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 5,
                        ),
                        const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 21, 188, 197),
                          size: 20,
                        ),
                        Container(
                          width: 10,
                        ),
                        const Text(
                          "Your Exercise Plan",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(child: Container()),
                        const Icon(
                          Icons.chevron_right,
                          color: Color.fromARGB(255, 21, 188, 197),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 244, 244, 244),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 15,
                            ),
                            const Text(
                              "Dr. Rajvi Patel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Container(
                              height: 5,
                            ),
                            const Text(
                              "physiotherapist",
                              style: TextStyle(
                                  color: Color.fromARGB(148, 0, 0, 0),
                                  fontSize: 13),
                            ),
                            Container(
                              height: 5,
                            ),
                            SizedBox(
                              height: 20,
                              child: Row(
                                children: [
                                  Image.asset("assets/images/Stars.png"),
                                  const Text(
                                    " 4.8 | 177 Reviews",
                                    style: TextStyle(
                                        color: Color.fromARGB(148, 0, 0, 0),
                                        fontSize: 10),
                                  ),
                                ],
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
