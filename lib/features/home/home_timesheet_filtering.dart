import 'package:clocking_system/features/home/home_controller.dart';
import 'package:clocking_system/features/home/selection_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              SizedBox(
                height: 16.h,
              ),
              GetBuilder<HomeController>(
                builder: (controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        child: SelectionBox(
                          isSelected: controller.status == "All",
                          txt: "All",
                        ),
                        onTap: () {
                          controller.status = "All";
                          controller.update();
                        }),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                        onTap: () {
                          controller.status = "Clock In";
                          controller.update();
                        },
                        child: SelectionBox(
                          isSelected: controller.status == "Clock In",
                          txt: "Clock In",
                        )),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                        onTap: () {
                          controller.status = "Clock Out";
                          controller.update();
                        },
                        child: SelectionBox(
                          isSelected: controller.status == "Clock Out",
                          txt: "Clock Out",
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Date",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16.h,
              ),
              GetBuilder<HomeController>(
                builder: (controller) => SizedBox(
                  height: 80.h,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                          onTap: () {
                           // controller.selectDateFrom(context);
                           controller.updateDateFrom(context);
                            controller.update();
                          },
                          child: SelectionDateBox(
                            txt: "From",
                            selected_date: controller.from == ""
                                ? "DD/MM/YY"
                                : controller.from ?? "",
                          )),
                      SizedBox(
                        width: 12.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            controller.updateDateTo(context);
                            controller.update();
                          },
                          child: SelectionDateBox(
                            txt: "To",
                            selected_date: controller.from == ""
                                ? "DD/MM/YY"
                                : controller.to ?? "",
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
