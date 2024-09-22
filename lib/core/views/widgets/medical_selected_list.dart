import 'package:flutter/material.dart';

class MedicalList extends StatefulWidget {
  const MedicalList({super.key});

  @override
  State<MedicalList> createState() => _MedicalListState();
}

class _MedicalListState extends State<MedicalList> {
  String? dropDownValue;

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
        DropdownMenuItem(value: 'أدوية', child: Text('أدوية')),
        DropdownMenuItem(value: 'معدات طبية', child: Text('معدات طبية ')),
      ],
    );
  }
}
