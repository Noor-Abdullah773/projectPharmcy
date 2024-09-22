import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  int? selectedValue; // القيمة المحددة

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Example'),
      ),
      body: Center(
        child: DropdownButton<int>(
          value: selectedValue, // القيمة الحالية
          hint: Text('اختر رقمًا'), // نص الإرشاد
          items: List.generate(10, (index) {
            return DropdownMenuItem<int>(
              value: index + 1, // القيم من 1 إلى 10
              child: Text((index + 1).toString()), // عرض الرقم
            );
          }),
          onChanged: (int? newValue) {
            setState(() {
              selectedValue = newValue; // تحديث القيمة المحددة
            });
          },
        ),
      ),
    );
  }
}