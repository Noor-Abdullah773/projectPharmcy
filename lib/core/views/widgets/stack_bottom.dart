import 'package:flutter/material.dart';

class StackBottom extends StatelessWidget {
  StackBottom({super.key,required this.my_widget,required this.title});
late  Widget my_widget;
late String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
           color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child:my_widget ,
          ),
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: const BoxDecoration(
                color: const Color.fromARGB(255, 54, 152, 131),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child:Center(child: Text("$title",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
