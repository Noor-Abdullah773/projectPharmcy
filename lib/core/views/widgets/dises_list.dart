import 'package:flutter/material.dart';

class DisesList extends StatefulWidget {
  const DisesList({super.key});

  @override
  State<DisesList> createState() => _DisesListState();
}

class _DisesListState extends State<DisesList> {
  String? dropDownValue ; 

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropDownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropDownValue = newValue!; 
        });
      },
      items: [
        DropdownMenuItem(value: 'سكري', child: Text('سكري')),
        DropdownMenuItem(value: 'ضغط', child: Text('ضغط')),
        DropdownMenuItem(value: 'القلب', child: Text('القلب')),
        DropdownMenuItem(value: 'مسكن الألم', child: Text('مسكن الألم')),
      ],
    );
  }
}