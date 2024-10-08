import 'package:flutter/material.dart';
import 'package:todolist_app/components/my_button.dart';
import 'package:todolist_app/components/my_textfield.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/screens/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final re_passwordController = TextEditingController();
  void signUp () async{
    //add data to fisebase on this
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WElcome to KMUTNB community', style: textTitle,),
          const SizedBox(height: 20,),
          Text('to get started, please provide crate an account.' ,style: textSubTitle,),
          const SizedBox(height: 30,),
          MyTextField(controller: nameController, hintText: 'Enter your name', obscureText: false, labelText: 'Name'),
          const SizedBox(height: 20,),
          MyTextField(controller: emailController, hintText: 'Enter your name', obscureText: false, labelText: 'Email'),
          const SizedBox(height: 20,),
          MyTextField(controller: passwordController, hintText: 'Enter your name', obscureText: false, labelText: 'Password'),
          const SizedBox(height: 20,),
          MyTextField(controller: re_passwordController, hintText: 'Enter your name', obscureText: false, labelText: 'Re-Password'),
          const SizedBox(height: 30,),
          MyButton(onTap: signUp, hinText: 'Register now'),
          const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have a member?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> const SignInScreen()));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.blue),
                    ),
                  )
                ],
              ),
              
        ],
      ),
    );
    
  }
}
