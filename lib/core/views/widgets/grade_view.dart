import 'package:flutter/material.dart';

class AppGridList extends StatelessWidget {
  const AppGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (ctx, indexk) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 215, 229, 227)),
            child: Column(
              children: [
                Image.asset(width: 200, height: 80, 'assets/images/dwa2.png'),
                Expanded(
                  child: ListTile(
                    title: Text(textAlign: TextAlign.end, 'مسكن الام '),
                    subtitle: Text(
                        textAlign: TextAlign.end, 'دواء يستخدم لمرض السكري'),
                  ),
                )
              ],
            ),
          );
        });
  }
}
