import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabWidget extends StatelessWidget {
  const TabWidget(
      {super.key,
      required TabController tabs,
      required this.textA,
      required this.textB,
      // required this.labelSize,
      // required this.fontFamily,
    // required this.unLabel,
      this.padding,
      // this.top,
      // this.bottom,
     // required this.shape
      })
      : _tabs = tabs;

  final TabController _tabs;
  final String textA;
  final String textB;
  // final double labelSize;
  // final String fontFamily;
  //final Color unLabel;
  // final ShapeBorder shape;
  // final double? top;
  // final double? bottom;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (int index) {},
      isScrollable: false,
      physics: const NeverScrollableScrollPhysics(),
      indicatorPadding: EdgeInsets.only(
        top: 1.0,
        bottom: 1.0 ,
      ),
      indicatorSize: TabBarIndicatorSize.tab,

      indicator:ShapeDecoration(
    color: Color(0xFFC7FFAD),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),),
      labelColor: Colors.black,
      labelStyle: const TextStyle(
         color: Color(0xFF13280A),
    fontSize: 16,
    fontFamily: 'Söhne',
    fontWeight: FontWeight.w300,
         
      ),
      unselectedLabelStyle: const TextStyle(
        color: Color(0xFF13280A),
    fontSize: 16,
    fontFamily: 'Söhne',
    fontWeight: FontWeight.w300,
      ),
      unselectedLabelColor: Colors.black,
      controller: _tabs,
      labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      tabs: [
        Transform.translate(
          offset: const Offset(0, 5),
          child: Tab(
            text: textA,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Transform.translate(
            offset: const Offset(0, 5),
            child: Tab(
              text: textB,
            ),
          ),
        )
      ], //_tabs.pathwayTab,
      //  indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: 10,
      padding: EdgeInsets.all(padding ?? 2.w),
    );
  }
}
