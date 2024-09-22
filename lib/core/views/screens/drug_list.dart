import 'package:flutter/material.dart';
import 'package:pharmacy/core/views/widgets/dotted_line.dart';
import 'package:pharmacy/core/views/widgets/drog_chip.dart';
import 'package:pharmacy/core/views/widgets/image_list.dart';

import 'package:pharmacy/core/views/widgets/my_dropdown.dart';

class DrugList extends StatelessWidget {
  const DrugList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('قائمة الأدوية والمعدات'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'اسم الدواء',
                          style: TextStyle(fontFamily: 'myfont'),
                        ),
                        Text(
                          'تاريخ الانتهاء   :12-2-2025',
                          style: TextStyle(
                              fontFamily: 'myfont', color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ImageListDrug(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const DoattedLine(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'شكل الدواء',
                      style: TextStyle(fontFamily: 'myfont'),
                    ),
                    DropdownButton<int>(
                      hint: Text('اختر كمية'),
                      items: List.generate(10, (index) {
                        return DropdownMenuItem<int>(
                          value: index + 1,
                          child: Text((index + 1).toString()),
                        );
                      }),
                      onChanged: (int? newValue) {},
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
