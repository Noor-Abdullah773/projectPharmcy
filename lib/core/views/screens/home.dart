import 'package:flutter/material.dart';
import 'package:pharmacy2/core/views/widgets/app_bar.dart';
import 'package:pharmacy2/core/views/widgets/dises_list.dart';
import 'package:pharmacy2/core/views/widgets/grade_view.dart';
import 'package:pharmacy2/core/views/widgets/medical_selected_list.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          MedicalList(),
          DisesList(),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 700,
                child: AppGridList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          'تبرع',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/donait');
        },
      ),
    );
  }
}
