// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  double? height, width;
  String text;
  VoidCallback onTap;
  ButtonRounded(
      {Key? key,
      this.width,
      this.height,
      required this.text,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 54, 152, 131),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onTap,
        child: Container(
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              text,
              style:const  TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: 'myfont'),
            ),
          ),
        ),
      ),
    );
  }
}
