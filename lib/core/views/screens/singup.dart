import 'package:flutter/material.dart';
import '../../constant/api_url.dart';
import '../../models/user.dart';
import '../../veiwModel/usrtVm.dart';
import '../widgets/button.dart';
import '../widgets/stack_widget.dart';
import '../widgets/text_form.dart';


class SingUpScreen extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  UserVm uvm=UserVm();
  SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackWidgt(
        hight: 450,
        my_widget:SingleChildScrollView(
          child: Column(
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
                controller: passController,
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
              AppTextForm(
                controller: confirmpassController,
                hint: 'تاكيد كلمة المرور',
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
                   User u=User(name: userController.text,email: emailController.text,password:passController.text,password_confirmation:confirmpassController.text);
                   uvm.register(u,ApiUrls.registerinUrl).then((value) {
                     Navigator.pop(context);
                      if(value=="secssed")
                     // print("ok");
                    Navigator.pushNamed(context, '/home');
                     else
                     {
                      return showDialog(context: context, builder:(ctx){
                        return AlertDialog(
                          content:Container(child: Text(value.toString()),)
                        );
                      });
                     }
                   }
                   
                   
                    );
        
                 
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
