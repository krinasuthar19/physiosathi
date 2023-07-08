import 'package:flutter/material.dart';
import 'package:physio_sathi/graph.dart';
import 'package:physio_sathi/timer.dart';

class Statisticss extends StatefulWidget {
  const Statisticss({super.key});

  @override
  State<Statisticss> createState() => _StatisticssState();
}

class _StatisticssState extends State<Statisticss> {
  String? selectedValue = 'Weekly';
  List<String> dropdownItems = [
    'Daily',
    'Weekly',
    'Monthly',
  ];

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
                Row(
                  children: [
                    Container(
                      width: 30,
                    ),
                    const Text(
                      "Stretch Breaks",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 30,
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                const Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: CountDownTimerWidget(),
                    ),
                  ],
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: LineChartSample5(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
