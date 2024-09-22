import 'package:flutter/material.dart';
import 'package:pharmacy/core/views/widgets/button.dart';
import 'package:pharmacy/core/views/widgets/stack_widget.dart';

class RegesterScreen extends StatefulWidget {
  const RegesterScreen({super.key});

  @override
  State<RegesterScreen> createState() => _RegesterScreenState();
}

class _RegesterScreenState extends State<RegesterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: const Color.fromARGB(255, 45, 148, 121),
        body: StackWidgt(
            hight: 300,
            my_widget: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'كن جزء من التغيير الذي تريد أن تراه',
                    style: TextStyle(fontFamily: 'myfont', fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonRounded(
                    text: 'تسجيل دخول',
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    }),
                const SizedBox(
                  height: 20,
                ),
                ButtonRounded(
                    text: 'انشاء حساب ',
                    onTap: () {
                      Navigator.pushNamed(context, '/singup');
                    }),
              ],
            )));
  }
}
