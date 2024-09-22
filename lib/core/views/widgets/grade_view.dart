import 'package:flutter/material.dart';

class AppGridList extends StatelessWidget {
  const AppGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260, // Keep the height fixed
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(), // Disable scrolling
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 2,
          mainAxisSpacing: 20,
          crossAxisCount: 3,
          childAspectRatio: 1,
        ),
        itemBuilder: (ctx, index) {
          return SizedBox(
            height: 108,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/drugList');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/images/drug.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 80,
                    width: 100, // Can keep width or adjust as needed
                  ),
                ),
                const SizedBox(height: 8),
                Text('دواء سكري'),
              ],
            ),
          );
        },
      ),
    );
  }
}
