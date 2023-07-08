import 'package:flutter/material.dart';

import 'appointment.dart';
import 'chat.dart';
import 'editprofile.dart';
import 'homescreen.dart';
import 'nortification.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const Appointment(),
    const ChatScreen(),
    const Nortification(),
    const EditProfileScreen()
  ];
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      floatingActionButton: currentIndex == 0
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {
                setBottomBarIndex(0);
              },
              child: const Icon(
                Icons.home,
                color: Colors.white,
              ), //icon inside button
            )
          : FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                setBottomBarIndex(0);
              },
              child: const Icon(
                Icons.home,
                color: Colors.grey,
              ), //icon inside button
            ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: const Color.fromARGB(255, 97, 88, 88),
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: currentIndex == 1
                        ? Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 25, 196, 37),
                                borderRadius: BorderRadius.circular(40)),
                            child: const ImageIcon(
                              AssetImage("assets/images/Vector (1).png"),
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : const ImageIcon(
                            AssetImage("assets/images/Vector (1).png"),
                            color: Colors.white,
                            size: 20,
                          ),
                    onPressed: () {
                      setBottomBarIndex(1);
                    },
                    splashColor: Colors.white,
                  ),
                  const Text(
                    "Appointment",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: currentIndex == 2
                        ? Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 25, 196, 37),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Icon(
                              Icons.chat,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : const Icon(
                            Icons.chat,
                            color: Colors.white,
                            size: 20,
                          ),
                    onPressed: () {
                      setBottomBarIndex(2);
                    },
                    splashColor: Colors.white,
                  ),
                  const Text(
                    "Chat",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                height: 50,
                decoration: const BoxDecoration(),
                child: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              Column(
                children: [
                  IconButton(
                    icon: currentIndex == 3
                        ? Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 25, 196, 37),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 20,
                          ),
                    onPressed: () {
                      setBottomBarIndex(3);
                    },
                    splashColor: Colors.white,
                  ),
                  const Text(
                    "Notification",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: currentIndex == 4
                        ? Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 25, 196, 37),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20,
                          ),
                    onPressed: () {
                      setBottomBarIndex(4);
                    },
                    splashColor: Colors.white,
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
