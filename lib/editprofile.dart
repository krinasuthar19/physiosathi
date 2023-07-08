import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _imageFile;
  TextEditingController dateController = TextEditingController();
  String? _selectedCountry;

  final List<String> _countryList = [
    'USA',
    'Canada',
    'Mexico',
    'United Kingdom',
    'Germany',
    'France',
    'India',
    'China',
    'Japan',
    'Australia',
  ];

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 16.0),
                GestureDetector(
                  onTap: _selectImage,
                  child: _imageFile != null
                      ? CircleAvatar(
                          radius: 64.0,
                          backgroundImage: FileImage(_imageFile!),
                        )
                      : CircleAvatar(
                          radius: 64.0,
                          child: Icon(Icons.camera_alt),
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
                      "Name",
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
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey)),
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
                      "Email",
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
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey)),
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
                      "Password",
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
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    obscureText: true,
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
                      "Date of Birth",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.bottomLeft,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: null,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    controller:
                        dateController, //editing controller of this TextField

                    readOnly: true, // when true user cannot edit text
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(), //get today's date
                        firstDate: DateTime(
                            1900), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime.now(),
                      );

                      if (pickedDate != null) {
                        print(
                            pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                        String formattedDate = DateFormat('yyyy-MM-dd').format(
                            pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                        print(
                            formattedDate); //formatted date output using intl package =>  2022-07-04
                        //You can format date as per your need

                        setState(() {
                          dateController.text =
                              formattedDate; //set foratted date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
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
                      "Country/Region",
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
                  height: 55,
                  alignment: Alignment.bottomLeft,
                  child: DropdownButtonFormField<String>(
                    value: _selectedCountry,
                    onChanged: (value) {
                      setState(() {
                        _selectedCountry = value;
                      });
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: null,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    items: _countryList.map((country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(country),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 18, 142, 64),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Save Changes",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
