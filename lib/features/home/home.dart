import 'package:clocking_system/features/home/home_controller.dart';
import 'package:clocking_system/features/home/home_timesheet_filtering.dart';
import 'package:clocking_system/utils/widgets/bottomshet.dart';
import 'package:clocking_system/utils/widgets/tabbar_widget.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCtrl = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(''),
                Container(
                  width: 200.w,
                  height: 40.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF7FFF3),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFF67A948)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: TabWidget(
                    tabs: homeCtrl.tabController,
                    textA: 'Time Clock',
                    textB: 'Time Sheet',
                  ),
                ),
                // SizedBox(width: 30.w,),
                Image.asset('assets/pngs/switch-body.png'),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Thursday, 4th January 2024',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Söhne',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  '9:00 am',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Söhne',
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              height: 66.82.h,
              padding: const EdgeInsets.all(23.41),
              decoration: ShapeDecoration(
                color: const Color(0xFFF2FFEC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19.51),
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: const AssetImage(
                    "assets/pngs/samuel.png",
                  ),
                  radius: 20.r,
                ),
                title: const Text(
                  'Samuel Ariyo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Söhne',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                subtitle: const Text(
                  'Creative Director',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Söhne',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
                trailing: InkWell(
                  onTap: (){
                    //showCustomModal(context, Filter(), backgroundColor: Colors.white);
                   openModal(context, const Filter());
                  },
                  child: const CircleAvatar(
                    backgroundColor:  Color(0xFFC7FFAD),
                    child: Icon(Icons.tune)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
                child: TabBarView(
              physics: const ClampingScrollPhysics(),
              controller: homeCtrl.tabController,
              children: [clockInModal(context), table(context)],
            ))
          ],
        ),
      )),
    );
  }
}

Widget clockInModal(BuildContext context) {
  return Column(
    children: [
       StreamBuilder(
              stream: Stream.periodic(const Duration(seconds: 1)),
              builder: (context, snapshot){
              return Container(
               alignment: Alignment.center,
                 child: Text(DateFormat('hh:mm:ss a').format(DateTime.now()),
                 style: const TextStyle(
                  color: Color(0XFF171717),
                  fontFamily: 'DS-DIGI',
                  fontSize: 24,
                  fontWeight: FontWeight.w900
                 ),
                 ),
              );
            }),
      SizedBox(height: 40.h,),
      Container(
        width: 151.77,
        height: 150.58,
        padding: const EdgeInsets.symmetric(horizontal: 37.38, vertical: 30.26),
        decoration: ShapeDecoration(
          color: const Color(0xFFDFFFD0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(89.01),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 25,
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
            Icon(
              Icons.timer,
              color: const Color(0xFF67A948),
              size: 20.sp,
            ),
            const SizedBox(height: 3.56),
            const Text(
              'Clock In',
              style: TextStyle(
                color: Color(0xFF67A948),
                fontSize: 18.36,
                fontFamily: 'Söhne',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget table(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: DataTable2(
        columnSpacing: 15,
        dividerThickness: 0.0,
        horizontalMargin: 15,
         headingRowHeight: 70,
         headingRowDecoration:BoxDecoration(
            color: const Color(0xFF67A948),
            borderRadius: BorderRadius.only(
               topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r))), 
        bottomMargin: 0,
       // sortArrowIcon: Icons.north,
        // decoration: BoxDecoration(
        //     color: Color(0xFF67A948),
        //     borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r))),
        // border: TableBorder.all(width: 0.0, style: BorderStyle.none, color: Colors.white),
        minWidth: 600,
        showBottomBorder: false,
        showCheckboxColumn: false,
        columns: const [
          DataColumn(
            label: Center(
              child: Text(
                'Date',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.29,
                  fontFamily: 'Söhne',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            // size: ColumnSize.L,
          ),
          DataColumn(
            label: Text(
              'Time In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.29,
                fontFamily: 'Söhne',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Time Out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.29,
                fontFamily: 'Söhne',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Comment',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.29,
                fontFamily: 'Söhne',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
        rows: List<DataRow>.generate(
            100,
            (index) => DataRow(
                    color: MaterialStatePropertyAll(
                        index % 2 == 1 ? const Color(0xFFF2FFEC) : Colors.white),
                    cells: const [
                      DataCell(Text('Tue, January 08',
                      style: TextStyle(
    color: Color(0xFF0C0909),
    fontSize: 15.29,
    fontFamily: 'Söhne',
    fontWeight: FontWeight.w500,
    height: 0,
  ),
                      )),
                      DataCell(Text('09:21 am',
                        style: TextStyle(
    color: Color(0xFF0C0909),
    fontSize: 15.29,
    fontFamily: 'Söhne',
    fontWeight: FontWeight.w500,
    height: 0,
  ),
                      )),
                      DataCell(Text('05:00 pm',
                        style: TextStyle(
    color: Color(0xFF0C0909),
    fontSize: 15.29,
    fontFamily: 'Söhne',
    fontWeight: FontWeight.w500,
    height: 0,
  ),
                      )),
                      DataCell(Text('Close of day',
                        style: TextStyle(
    color: Color(0xFF0C0909),
    fontSize: 15.29,
    fontFamily: 'Söhne',
    fontWeight: FontWeight.w500,
    height: 0,
  ),
                      )),
                    ]))),
  );
}
