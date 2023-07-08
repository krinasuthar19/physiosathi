import 'package:flutter/material.dart';

class ExerciseSchedule extends StatefulWidget {
  const ExerciseSchedule({super.key});

  @override
  State<ExerciseSchedule> createState() => _ExerciseScheduleState();
}

class _ExerciseScheduleState extends State<ExerciseSchedule> {
  bool _isChecked = true;
  bool _isChecked1 = true;
  bool _isChecked2 = true;
  bool _isChecked3 = true;
  bool _isChecked4 = true;
  bool _isChecked5 = true;
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "Exercise Schedule",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                    ),
                    const Image(
                      image: AssetImage('assets/images/!.png'),
                      height: 30,
                    ),
                    const Text(
                      "Click the checkbox after \ncompleting your exercise.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                  child: Container(
                    width: 330,
                    height: 60,
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        _isChecked
                            ? const Icon(
                                Icons.square_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.check_box,
                                color: Colors.grey,
                              ),
                        Container(
                          width: 10,
                        ),
                        _isChecked
                            ? const Text(
                                '9:00 am',
                                style: TextStyle(fontSize: 16.0),
                              )
                            : const Text(
                                '9:00 am',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked1 = !_isChecked1;
                    });
                  },
                  child: Container(
                    width: 330,
                    height: 60,
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        _isChecked1
                            ? const Icon(
                                Icons.square_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.check_box,
                                color: Colors.grey,
                              ),
                        Container(
                          width: 10,
                        ),
                        _isChecked1
                            ? const Text(
                                '10:00 am',
                                style: TextStyle(fontSize: 16.0),
                              )
                            : const Text(
                                '10:00 am',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked2 = !_isChecked2;
                    });
                  },
                  child: Container(
                    width: 330,
                    height: 60,
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        _isChecked2
                            ? const Icon(
                                Icons.square_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.check_box,
                                color: Colors.grey,
                              ),
                        Container(
                          width: 10,
                        ),
                        _isChecked2
                            ? const Text(
                                '11:00 am',
                                style: TextStyle(fontSize: 16.0),
                              )
                            : const Text(
                                '11:00 am',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked3 = !_isChecked3;
                    });
                  },
                  child: Container(
                    width: 330,
                    height: 60,
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        _isChecked3
                            ? const Icon(
                                Icons.square_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.check_box,
                                color: Colors.grey,
                              ),
                        Container(
                          width: 10,
                        ),
                        _isChecked3
                            ? const Text(
                                '12:00 pm',
                                style: TextStyle(fontSize: 16.0),
                              )
                            : const Text(
                                '12:00 pm',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked4 = !_isChecked4;
                    });
                  },
                  child: Container(
                    width: 330,
                    height: 60,
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        _isChecked4
                            ? const Icon(
                                Icons.square_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.check_box,
                                color: Colors.grey,
                              ),
                        Container(
                          width: 10,
                        ),
                        _isChecked4
                            ? const Text(
                                '1:00 pm',
                                style: TextStyle(fontSize: 16.0),
                              )
                            : const Text(
                                '1:00 pm',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked5 = !_isChecked5;
                    });
                  },
                  child: Container(
                    width: 330,
                    height: 60,
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        _isChecked5
                            ? const Icon(
                                Icons.square_outlined,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.check_box,
                                color: Colors.grey,
                              ),
                        Container(
                          width: 10,
                        ),
                        _isChecked5
                            ? const Text(
                                '2:00 pm',
                                style: TextStyle(fontSize: 16.0),
                              )
                            : const Text(
                                '2:00 pm',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.grey),
                              )
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
