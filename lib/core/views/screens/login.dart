import 'package:flutter/material.dart';
import 'package:pharmacy2/core/views/widgets/button.dart';
import 'package:pharmacy2/core/views/widgets/stack_widget.dart';
import 'package:pharmacy2/core/views/widgets/text_form.dart';
import 'package:pharmacy2/helper/validation.dart';

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> keyLogin = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  ValidationHelper val = ValidationHelper();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: const Color.fromARGB(255, 45, 148, 121),
        body: StackWidgt(
            hight: MediaQuery.of(context).size.height * 0.55,
            my_widget: Form(
              key:keyLogin ,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                        color: Color(0xff08685a),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextForm(
                    validation:val.checkEmail, 
                    hint: 'أدخل ايميلك',
                    obscure: false,
                    controller: emailController,
                    icon: const Icon(
                      Icons.email,
                      color: Color(0xff08685a),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextForm(
                      validation:val.checkPassword, 
                      hint: 'أدخل كلمة المرور',
                      obscure: true,
                      controller: passController,
                      icon: const Icon(
                        Icons.password,
                        color: Color(0xff08685a),
                      )),
               const   SizedBox(
                    height: 30,
                  ),
                  ButtonRounded(
                    onTap: () {
                      if(keyLogin.currentState!.validate())
                     {
                       Navigator.pushNamed(context, '/home');
                     }
                    },
                    text: 'تسجيل الدخول',
                  )
                ],
              ),
            )));
  }
}
