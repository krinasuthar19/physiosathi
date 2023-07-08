import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:physio_sathi/chart.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
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
                    Text(
                      "Statistics",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      width: 100,
                      child: DropdownButton<String>(
                        value: selectedValue,
                        isExpanded: true,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue;
                          });
                        },
                        items: dropdownItems.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      width: 30,
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 10.0,
                          percent: 0.5,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "50%",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Weekly Goal",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          progressColor: Colors.green,
                        )),
                  ],
                ),
                Container(
                  height: 270,
                  width: 300,
                  child: BarChartSample1(),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 50, right: 50),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/Vector.png'),
                                    height: 30,
                                  ),
                                ],
                              ),
                              Container(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "2151",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Kcal Burnt",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/Clock.png'),
                                    height: 30,
                                  ),
                                ],
                              ),
                              Container(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "10h",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Weekly Hour",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
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
