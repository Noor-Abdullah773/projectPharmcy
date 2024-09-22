import 'package:flutter/material.dart';
import 'package:pharmacy/core/views/widgets/button.dart';
import 'package:pharmacy/core/views/widgets/stack_widget.dart';
import 'package:pharmacy/core/views/widgets/text_form.dart';

class SingUpScreen extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackWidgt(
        hight: 450,
        my_widget: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'انشاء حساب',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Myfont',
                  color: Color(0xff08685a)),
            ),
            const SizedBox(
              height: 20,
            ),

            AppTextForm(
              controller: userController,
              obscure: false,
              hint: 'ادخل اسم المستخدم',
              icon: const Icon(
                Icons.person,
                color: Color(0xff08685a),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            AppTextForm(
              controller: emailController,
              obscure: false,
              hint: 'أدخل ايميلك',
              icon: const Icon(
                Icons.email,
                color: Color(0xff08685a),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppTextForm(
              controller: emailController,
              hint: 'أدخل كلة المرور',
              icon: const Icon(
                Icons.password,
                color: Color(0xff08685a),
              ),
              obscure: true,
            ),
            const SizedBox(
              height: 20,
            ),
            // singin
            ButtonRounded(
              text: 'انشاء حساب',
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            )
          ],
        ),
      ),
    );
  }
}
