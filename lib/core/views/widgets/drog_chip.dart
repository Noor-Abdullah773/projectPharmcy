import 'package:flutter/material.dart';

class DrugAndEquipmentChips extends StatelessWidget {
  const DrugAndEquipmentChips({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'أسبرين',
      'باراسيتامول',
      'مضادات حيوية',
      'أجهزة قياس السكر',
      'أجهزة ضغط الدم',
      'أدوية القلب',
      'معدات الإسعاف',
      'أدوية الحساسية',
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Container(
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: items.map((item) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('لقد اخترت: $item')),
                  );
                },
                child: Chip(
                  backgroundColor: const Color.fromARGB(255, 236, 236, 236),
                  label: Text(item),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
