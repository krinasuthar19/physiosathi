import 'package:flutter/material.dart';
import 'package:physio_sathi/datepicker.dart';
import 'package:physio_sathi/timepicker.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  final timeController = TextEditingController();
  final List<String> age = [
    '1-5',
    '5-10',
    '11-15',
    '16-20',
    '20-25',
    '26-30',
    '30-35',
    '26-30',
    '30-35',
    '36-40',
    '40-45',
    '46-50',
    '50-55',
    '56-60',
    '60-65',
    '66-70',
    '70-75',
    '76-80',
    '80-85',
    '86-90',
    '90-95',
    '96-100',
    '100+',
  ];
  String? selectedAge;
  final List<String> gender = [
    'Male',
    'Female',
    'Others',
  ];
  String? selectedGender;
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
                    const Icon(
                      Icons.arrow_back,
                    ),
                    Container(
                      width: 80,
                    ),
                    const Text(
                      "New Appointment",
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
                const DatePicker(),
                Container(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "Available Time",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                const TimePicker(),
                Container(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "Patient Details",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.bottomLeft,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: null,
                      filled: true,
                      fillColor: Color.fromARGB(255, 238, 238, 238),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.transparent)),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "Age",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 238, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(
                        '   Select',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: age
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedAge,
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value as String;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                    ),
                    const Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 238, 238),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text(
                        '   Select',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: gender
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value as String;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 18, 142, 64),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ()),
                        );*/
                    },
                    child: const Text(
                      "Book Appointment",
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
