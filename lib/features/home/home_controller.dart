import 'package:clocking_system/utils/widgets/repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
    final List<Tab> clockTab = <Tab>[
    const Tab(
      text: 'Time Clock',
    ),
    const Tab(
      text: 'Time Sheet',
    )
  ];
    String? _from = "";
  String? _to = "";
  String?  _status = "";
String? get status => _status;

   String? get to => _to;

  String? get from => _from;

 
set status(String? value) {
    _status = value;
  }


  set from(String? value) {
    _from = value;
  }

 

  set to(String? value) {
    _to = value;
  }
  late TabController tabController;
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  void onClose() {
    tabController.dispose();
    super.onClose();
  }

   selectDateTo(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1800),
      lastDate: DateTime.now(),
    ).then((date) {
      to = Repository.getInstance()!.getDateStr(date!);
      update();
    });
  }

  selectDateFrom(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1800),
      lastDate: DateTime.now(),
    ).then((date) {
      from = Repository.getInstance()!.getDateStr(date!);
      update();
    });

}


  void updateDateFrom(BuildContext context, ) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: (DateTime(1900)),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      from = DateFormat('yyyy-MM-dd').format(pickedDate);
    }
    update();
  }

   void updateDateTo(BuildContext context, ) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: (DateTime(1900)),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      to = DateFormat('yyyy-MM-dd').format(pickedDate);
    }
    update();
  }
}