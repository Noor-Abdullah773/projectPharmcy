import 'package:flutter/material.dart';
import 'package:pharmacy/core/views/widgets/button.dart';

class StackWidgt extends StatelessWidget {
  Widget? my_widget;
  double? hight;
  StackWidgt({super.key, required this.my_widget, this.hight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash2.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: hight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: my_widget,
            ),
          ),
        ],
      ),
    );
  }
}
