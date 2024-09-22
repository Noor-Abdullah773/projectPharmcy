import 'package:flutter/material.dart';

class MarkitingImages extends StatelessWidget {
  const MarkitingImages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 250,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/ecommrc.jpg',
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)),
          );
        });
  }
}
