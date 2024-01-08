import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_servise/common/text_field.dart';

import '../common/constants/constants.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 42,horizontal: 20),
           child: Center(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,


               children: [
                  Text("User Profile",style: TextStyle(color: comColor,fontSize: 34,fontWeight: FontWeight.w800),),
                  SizedBox(height: defaultPadding,),
                  Stack(
                    children:  [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: CupertinoColors.activeGreen,
                        backgroundImage: AssetImage('assets/image/profile.png'),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 0,
                        child: InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
                          },
                          child: const ImageIcon(
                            AssetImage('assets/image/edit.png'),
                            size: 16,
                            color: Colors.black,

                          ),

                        ),
                      )
                    ],
                  ),

                 SizedBox(height: defaultPadding,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("First Name",style: TextStyle(fontSize: 20),),
                             SizedBox(height: 10,),
                             SizedBox(
                                 height: 50,
                                 width: 160,
                                 child: CommonTextField(hinttext: "",reduis: 4,)),
                           ],
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Last Name",style: TextStyle(fontSize: 20)),
                             SizedBox(height: 10,),
                             SizedBox(
                                 height: 50,
                                 width: 160,
                                 child: CommonTextField(hinttext: "",reduis: 5,)),
                           ],
                         ),

                       ],
                     ),
                     SizedBox(height: defaultPadding,),
                     Text("Mobile Number",style: TextStyle(fontSize: 20),),
                     SizedBox(height: 10,),
                     SizedBox(
                        height: 50,
                         child: CommonTextField(hinttext: "",reduis: 5,)),
                     SizedBox(height: defaultPadding,),
                     Text("Email Id",style: TextStyle(fontSize: 20),),
                     SizedBox(height: 10,),
                     SizedBox(
                        height: 50,
                         child: CommonTextField(hinttext: "",reduis: 5,)),
                     SizedBox(height: defaultPadding,),
                     Text("House/Flat/Block/Building",style: TextStyle(fontSize: 20),),
                     SizedBox(height: 10,),
                     SizedBox(
                        height: 50,
                         child: CommonTextField(hinttext: "",reduis: 5,)),
                     SizedBox(height: defaultPadding,),
                     Text("Street, Sociaty Or Landmar",style: TextStyle(fontSize: 20),),
                     SizedBox(height: 10,),
                     SizedBox(
                        height: 50,
                         child: CommonTextField(hinttext: "",reduis: 5,)),
                     SizedBox(height: defaultPadding*2,),
                     Center(
                       child: SizedBox(
                         height: 45,
                         width: 142,
                         child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             backgroundColor: comColor,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(30),
                               )

                           ),
                           onPressed: (){},
                           child: Text("Save",style: TextStyle(fontSize: 19,color: Colors.white),),
                         ),
                       ),
                     ),
                   ],
                 )
               ],
             ),
           ),
         ),
       ),
    );
  }
}
