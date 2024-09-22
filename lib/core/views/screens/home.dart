import 'package:flutter/material.dart';
import 'package:pharmacy/core/views/widgets/drog_chip.dart';
import 'package:pharmacy/core/views/widgets/grade_view.dart';
import 'package:pharmacy/core/views/widgets/markiting.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 155, 200, 189),
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                'الصفحة الرئيسة',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(Icons.shopping_cart)),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: 80,
                  child: DrugAndEquipmentChips()),

              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 300,
                  height: 150,
                  child: MarkitingImages()),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      textDirection: TextDirection.rtl,
                      'الفئات و الأقسام',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              //caytgurys
              const AppGridList(),
            ],
          ),
        ),
      ),
    );
  }
}
