import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_servise/common/constants/constants.dart';
import 'package:rent_servise/common/text_field.dart';
import 'package:rent_servise/loginOP/login_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFCFECDF),
                Color(0xFFFFFFFF),

              ]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("Reset your password",style: TextStyle(color: Colors.black,fontSize: 24,),),
              const SizedBox(height: defaultPadding/2,),
              const Text("If the account exists, we'll email you instructions \nto reset the password",style: TextStyle(color: Colors.black,fontSize: 12,),
              textAlign:TextAlign.center),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email",style: TextStyle(color: Colors.black,fontSize: 18,),),
                  SizedBox(
                      height: 50,
                      child: CommonTextField(hinttext: '',reduis: 5,)),
                ],
              ),
             SizedBox(height: defaultPadding,),
              SizedBox(
                height: 40,
                width: 197,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: comColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )

                  ),
                  onPressed: (){},
                  child: Text("Reset password",style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
              ),
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              }, child: const Text("Return to Login",style: TextStyle(color: Colors.black,fontSize: 12,)))

            ],
          ),
        ),
      ),
    );
  }
}
