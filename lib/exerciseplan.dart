import 'package:flutter/material.dart';
import 'package:physio_sathi/exerciseschedule.dart';
import 'package:physio_sathi/statictics.dart';

import 'exercisepage1.dart';

class ExercisePlan extends StatefulWidget {
  const ExercisePlan({super.key});

  @override
  State<ExercisePlan> createState() => _ExercisePlanState();
}

class _ExercisePlanState extends State<ExercisePlan> {
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
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/!.png'),
                      height: 30,
                    ),
                    Text(
                      "You haven’t checked out the app \nrecently. Do some workouts.",
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
                SizedBox(
                  width: 330,
                  height: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 230, 241, 241),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Statistics()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 5,
                        ),
                        Image.asset(
                          "assets/images/clock-6 3.png",
                          height: 20,
                        ),
                        Container(
                          width: 10,
                        ),
                        const Text(
                          "Today is 11th day after your \n\nsurgery (Week 2). Follow the \n\ninstructions given in the video",
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
                  height: 40,
                ),
                Container(
                  width: 330,
                  height: 178,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/temp.png",
                  ),
                ),
                Container(
                  height: 40,
                ),
                SizedBox(
                  width: 300,
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
                        MaterialPageRoute(builder: (context) => Statisticss()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 5,
                        ),
                        Container(
                          width: 10,
                        ),
                        const Text(
                          "Click here for all Exercises",
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
                  height: 40,
                ),
                SizedBox(
                  width: 300,
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
                            builder: (context) => ExerciseSchedule()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 5,
                        ),
                        Container(
                          width: 10,
                        ),
                        const Text(
                          "Click here for your \nPhysotherapy Plan",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
