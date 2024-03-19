
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
     
      this.height,
      this.width,
      this.backGroundColor,
       required this.child})
      : super(key: key);

  final Function()? onPressed;

  final double? height;
  final double? width;
  
  final Color? backGroundColor;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
         height: height ?? 40.h,
         alignment: Alignment.center,
        width: width,
        decoration: BoxDecoration(
         borderRadius:
           BorderRadius.circular(6.r),
           color:   backGroundColor ?? Color(0XFF67A948), 
            
        ),
        child: child,
        // ElevatedButton(
        //   onPressed: onPressed,
        //   style: ElevatedButton.styleFrom(
        //     elevation: 0,
        //    shadowColor: Colors.transparent,
        //     backgroundColor: backGroundColor ?? BlvColors.buttonColor,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(10.r),
              
        //     ),
        //   ),
        //   child: child
        // ),
      ),
    );
  }
}
