import 'package:flutter/material.dart';
import 'package:pharmacy2/helper/route.dart';

import 'core/views/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home:LoginScreen()
     initialRoute: '/regester' ,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
