import 'package:flutter/material.dart';
class CommonTextfield extends StatelessWidget {
  final double? height;
  final double? width;
  final String? hintText;
  final Color? color;
  final IconData? icon;

  const CommonTextfield({super.key, this.height, this.width, this.hintText, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height ?? 60 ,
      width: width ?? 330,
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon:Icon(icon),
            hintText: hintText ?? "Enter Your Data",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: color ?? Colors.blueGrey.shade500)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: BorderSide(color: color ?? Colors.green)
            )
        ),
      ),
    );;
  }
}
