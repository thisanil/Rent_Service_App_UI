import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.text, required this.icon});
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style:TextStyle(fontSize: 18,color: Colors.black),),
          // Icon,color: Colors.black54,size: 20,)
          IconButton(onPressed: (){},
              icon: icon,
            color: Colors.black54,
            iconSize: 20,
          )
        ],
      ),
    );
  }
}
