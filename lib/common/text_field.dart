import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';

class CommonTextField extends StatelessWidget {
  CommonTextField(
      {super.key,
      required this.hinttext,
      this.color,
      this.reduis,
      this.controller,
      this.icon});

  final String hinttext;
  final Color? color;
  final double? reduis;
  final Icon? icon;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,

      minLines: 1,
      cursorColor: Colors.black12,


      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 7),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: color ?? Colors.black38,
          ),
          borderRadius: BorderRadius.circular(reduis ?? 10),
        ),
        hintText: "${hinttext}",
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: color ?? Colors.black38,
          ),
          borderRadius: BorderRadius.circular(reduis ?? 10),
        ),
      ),
      // cursorColor: Colors.black12,
    );
  }
}
