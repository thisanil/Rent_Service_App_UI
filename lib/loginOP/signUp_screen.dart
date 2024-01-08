import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import 'package:rent_servise/loginOP/login_screen.dart';
import 'package:rent_servise/screen/main_screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controller=TextEditingController();
  final FirebaseAuth auth =FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(0.7),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical:  30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

             Expanded(
               flex: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Please Enter OTP",style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),),
                   SizedBox(height: 50,),
                   animatedBorders(context,controller),
                 ],
               ),
             ),

            Expanded(
              flex: 1,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 45,
                      width: 130,
                      child: ElevatedButton(
                          onPressed: () async {
                            try{
                              PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId:LoginScreen.verify, smsCode: controller.text.trim());

                              await auth.signInWithCredential(credential).then((value) {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                                Get.snackbar('Successfully', 'Account Created',
                                backgroundColor: Colors.black38
                                );

                              }).onError((error, stackTrace) {
                                showDialog(context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    content: Text(error.toString()),
                                  );
                                });
                              });

                            }
                            catch(e)
                            {
                              showDialog(context: context, builder: (BuildContext context){
                                return AlertDialog(
                                  title: Text("Wrong"),
                                  content: Text("Invalid OTP"),
                                );
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4F6F52),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                          child: const Text("Verify",
                              style: TextStyle(
                                fontSize: 17,
                              )))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget animatedBorders(BuildContext,TextEditingController ? controllers) {
    return   Padding(
      padding:  EdgeInsets.all(8.0),
      child: Pinput(
        controller:controllers,
        length: 6,
        errorText: "Enter valid OTP",


      ),
    );
  }

}
