import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  int _selectedContainerIndex = -1;

  List<String> containerNames = [
    '9:00 AM',
    '9:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 PM',
    '12:30 PM',
    '1:00 PM',
    '1:30 PM',
    '2:00 PM',
    '2:30 PM',
    '3:00 PM',
    '3:30 PM',
    '4:00 PM',
    '4:30 PM',
    '5:00 PM',
    '5:30 PM',
    '6:00 PM',
    '6:30 PM',
    '7:00 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContainerRow(0),
        buildContainerRow(1),
        buildContainerRow(2),
      ],
    );
  }

  Widget buildContainerRow(int rowIndex) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(7, (index) {
          int containerIndex = rowIndex * 7 + index;
          bool isSelected = _selectedContainerIndex == containerIndex;

          return InkWell(
            onTap: () {
              setState(() {
                _selectedContainerIndex = containerIndex;
              });
            },
            child: Container(
              width: 100,
              height: 40,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey
                ),
                color: isSelected ? const Color.fromARGB(255, 18, 142, 64) : Colors.transparent,
              ),
              child: Center(
                child: Text(
                  containerNames[containerIndex],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
