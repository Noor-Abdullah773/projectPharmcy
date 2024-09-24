import 'package:flutter/material.dart';

import '../widgets/stack_bottom.dart';

class DonateScreen extends StatelessWidget {
  DonateScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return StackBottom(my_widget:SingleChildScrollView(
           child: Container(
             margin: EdgeInsets.only(right:15),
             child: Directionality(
              textDirection: TextDirection.rtl,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Row(children: [
                    Text("اسم الدواء"), 
                    Container(width:50,height:50,color:Colors.red)
                   ],)
                 ],
               ),
             ),
           ),
        ), 
    title:"واجهة التبرع",);
  }
}
