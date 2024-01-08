import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_servise/common/constants/constants.dart';
import 'package:rent_servise/screen/forget_password_screen.dart';
import 'package:rent_servise/screen/profile_item.dart';
import 'package:rent_servise/screen/user_profile_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("My profile",style: TextStyle(color: comColor,fontSize: 34,fontWeight: FontWeight.w800),),
                SizedBox(height: defaultPadding,),
                Row(
                  children: [
                    Stack(
                      children:  [
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: CupertinoColors.activeGreen,
                          backgroundImage: AssetImage('assets/image/profile.png'),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 0,
                          child: InkWell(
                            onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
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
                    SizedBox(width: defaultPadding/2,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Matilda Brown",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                        const SizedBox(height: 6,),
                        const Text("matildabrown@mail.com",style: TextStyle(color:Colors.black54,fontSize: 14,)),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                ProfileItem(text: 'My Activity', icon:Icon(Icons.star_border),),
                ProfileItem(text: 'Notifications', icon:Icon(Icons.notifications_none_outlined),),
                ProfileItem(text: 'Quick Links', icon:Icon(Icons.link),),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Visit Help Center',style:TextStyle(fontSize: 18,color: Colors.black),),
                    Row(

                      children: [
                        InkWell(
                          child: Container(
                            height: 23,
                            width: 26,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: comColor
                            ),
                            
                            child:Icon(Icons.email_outlined,color: Colors.white,size: 15,),

                          ),
                        ),
                        const SizedBox(width: 10,),
                        InkWell(
                          child: Container(
                            height: 23,
                            width: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.red
                            ),

                            child:Center(child: Icon(Icons.phone,color: Colors.white,size: 15,)),

                          ),
                        ),
                        SizedBox(width: 15,),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 5,),
                ProfileItem(text: 'Invite Friends', icon:Icon(Icons.share),),
                InkWell(child: const ProfileItem(text: 'Forget Password', icon:Icon(Icons.password_outlined),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                },
                ),

                const ProfileItem(text: 'Logout', icon:Icon(Icons.logout_outlined),),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
