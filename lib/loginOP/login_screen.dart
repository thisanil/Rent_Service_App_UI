import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_servise/common/constants/constants.dart';
import 'package:rent_servise/common/text_field.dart';
import 'package:rent_servise/loginOP/signUp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String verify="";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  TextEditingController _controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Positioned(
            right: defaultPadding,
            top: defaultPadding*5.5,
            child: Container(
              height: 200,
                width: 340,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:AssetImage('assets/image/login.png'),
                        fit: BoxFit.cover

                    )
                )
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 700,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:AssetImage('assets/image/login2.png'),
                  fit: BoxFit.cover

                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(height: 150,),
                   Text("Login", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w600),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding*2,vertical: defaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mobile Number", style: TextStyle(color: Colors.black, fontSize: 17,),),
                          CommonTextField(hinttext: "Mobile Number",controller: _controller,),


                        ],
                      ),
                    ),
                   SizedBox(
                       height: 45,
                       width: 130,
                       child: ElevatedButton(
                           onPressed: () async {

                             String phoneNumber=_controller.text.trim();
                             await FirebaseAuth.instance.verifyPhoneNumber(
                               phoneNumber: '+91$phoneNumber',
                               verificationCompleted: (PhoneAuthCredential credential) {},
                               verificationFailed: (FirebaseAuthException e) {},
                               codeSent: (String verificationId, int? resendToken) {
                                LoginScreen.verify=verificationId;
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                               },
                               codeAutoRetrievalTimeout: (String verificationId) {},
                             );


                           },
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xFF4F6F52),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30),
                               )
                           ),
                           child: Text("Get OTP", style: TextStyle( fontSize: 17,)))

                   ),
                   // Row(
                   //   mainAxisAlignment: MainAxisAlignment.center,
                   //   children: [
                   //     Text("New User ?",),
                   //     TextButton(onPressed: (){},
                   //         child:Text("Sign Up",style: TextStyle( color: Colors.black87))
                   //
                   //     ),
                   //   ],
                   // ),

                 ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
