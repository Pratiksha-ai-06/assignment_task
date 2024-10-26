import 'package:flutter/material.dart';
class CommonContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String? lable;
  final TextStyle? style;
  final IconData? icon;

  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final  BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final AssetBundle? bundle;
  final double? Positioned;
  final Text? hinttext;
  final String? hintText;
  final FontWeight? fontsize;

  final double? left; final   double? top;
  final double? right;   final   double? bottom;


  const CommonContainer({super.key, this.height, this.width, this.color, this.lable, this.style, this.alignment, this.padding, this.decoration, this.foregroundDecoration, this.constraints, this.margin, this.bundle, this.Positioned, this.hinttext, this.hintText, this.fontsize, this.left, this.top, this.right, this.bottom, this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[ Container(
          height: height ?? 50,
          width: width ?? 50,
          decoration: BoxDecoration(
              color: color ?? Colors.grey,
              border: Border.all(color:color??Colors.green,width: 2),
              borderRadius: BorderRadius.circular(18)
          ),
          child: Center(child: Text(hintText ?? "data",style:style?? TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),)),
        )

        ]
    );
  }
}
