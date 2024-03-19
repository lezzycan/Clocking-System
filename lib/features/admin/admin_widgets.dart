
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReusableBox extends StatelessWidget {
  const ReusableBox({super.key, required this.color, required this.asset, required this.miniColor, required this.title});
  
  final  Color color;
  final String asset;
  final Color miniColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
  width: 305,
  height: 312.56,
  padding: const EdgeInsets.all(24.97),
  decoration: ShapeDecoration(
    color:  color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(19),
    ),
    shadows: const[
     BoxShadow(
        color: Color(0x19000000),
        blurRadius: 24,
        offset: Offset(0, 8),
        spreadRadius: 0,
      )
    ],
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.all(34.15),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: miniColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(170.77),
          ),
        ),
        child: SvgPicture.asset(asset)
      ),
      const SizedBox(height: 20.56),
      Container(
        padding: const EdgeInsets.all(4.90),
        child:  Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$title\nTime Sheet',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Söhne',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }
}