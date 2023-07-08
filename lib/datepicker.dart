import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 20,
            ),
            buildMonthYearRow(),
          ],
        ),
        buildDateRow(),
      ],
    );
  }

  Widget buildMonthYearRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildMonthDropdown(),
        const SizedBox(width: 20.0),
        buildYearDropdown(),
        
      ],
    );
  }

  Widget buildMonthDropdown() {
    List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    int selectedMonth = _selectedDate.month - 1;

    return DropdownButton<int>(
      value: selectedMonth,
      onChanged: (int? month) {
        setState(() {
          _selectedDate =
              DateTime(_selectedDate.year, month! + 1, _selectedDate.day);
        });
      },
      items: months
          .asMap()
          .entries
          .map((entry) => DropdownMenuItem<int>(
                value: entry.key,
                child: Text(entry.value),
              ))
          .toList(),
    );
  }

  Widget buildYearDropdown() {
    int currentYear = DateTime.now().year;
    int minYear = 2023;
    int maxYear = currentYear + 10;

    List<int> years =
        List.generate(maxYear - minYear + 1, (index) => minYear + index);
    int selectedYear = _selectedDate.year;

    return DropdownButton<int>(
      value: selectedYear,
      onChanged: (int? year) {
        setState(() {
          _selectedDate =
              DateTime(year!, _selectedDate.month, _selectedDate.day);
        });
      },
      items: years
          .map((year) => DropdownMenuItem<int>(
                value: year,
                child: Text(year.toString()),
              ))
          .toList(),
    );
  }

  Widget buildDateRow() {
    int daysInMonth =
        DateTime(_selectedDate.year, _selectedDate.month + 1, 0).day;
    int firstDayIndex =
        DateTime(_selectedDate.year, _selectedDate.month, 1).weekday - 1;
    List<String> daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(daysInMonth, (index) {
          int day = index + 1;
          DateTime date =
              DateTime(_selectedDate.year, _selectedDate.month, day);

          bool isSelected = date.year == _selectedDate.year &&
              date.month == _selectedDate.month &&
              date.day == _selectedDate.day;

          return InkWell(
            onTap: () {
              setState(() {
                _selectedDate = date;
              });
            },
            child: Container(
              width: 60,
              height: 70,
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: isSelected
                    ? const Color.fromARGB(255, 18, 142, 64)
                    : const Color.fromARGB(0, 184, 35, 35),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    day.toString(),
                    style: TextStyle(
                        color: isSelected
                            ? const Color.fromARGB(255, 255, 255, 255)
                            : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 9.0),
                  Text(
                    daysOfWeek[(index + firstDayIndex) % 7],
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
