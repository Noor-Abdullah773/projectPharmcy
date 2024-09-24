import 'package:flutter/material.dart';
import '../../constant/api_url.dart';
import '../../models/user.dart';
import '../../veiwModel/usrtVm.dart';
import '../widgets/button.dart';
import '../widgets/stack_widget.dart';
import '../widgets/text_form.dart';


class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
   UserVm uvm=UserVm();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: const Color.fromARGB(255, 45, 148, 121),
        body: StackWidgt(
            hight: MediaQuery.of(context).size.height * 0.45,
            my_widget: Column(
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
                    
                   User u=User(email: emailController.text,password:passController.text);
                  print(u.password);
                   print(u.email);
                  
                   uvm.login(u,ApiUrls.loginUrl).then((value) {
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
                    );//thin
                   showModalBottomSheet(context: context, builder:(ctx){
                    return Container(
                     child: Center(child: CircularProgressIndicator(),),
                    );});
        
                  },
                  text: 'تسجيل الدخول',
                )
              ],
            )));
  }
}
