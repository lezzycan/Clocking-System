import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableDropDownWidget extends StatelessWidget {
  ReusableDropDownWidget(
      {super.key,
      this.onChanged,
      this.items,
      this.validator,
      required this.value,
      required this.hint});
  final Function(dynamic)? onChanged;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  List<DropdownMenuItem<String>>? items;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      hint: Text(hint!),
      icon: const Icon(Icons.expand_more),
      style: const TextStyle(
        color: Color(0xFF9E9E9E),
        fontSize: 16,
        fontFamily: 'Söhne',
        fontWeight: FontWeight.w500,
        height: 0.06,
      ),
      decoration: InputDecoration(
          fillColor: const Color(0xFFF6FEF3),
          filled: true,
          hintStyle: const TextStyle(
            color: Color(0xFF2B5119),
            fontSize: 16,
            fontFamily: 'Söhne',
            fontWeight: FontWeight.w300,
           // height: 11
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.50, color: Color(0xFF67A948)),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.50, color: Color(0xFF67A948)),
            borderRadius: BorderRadius.circular(5),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.50, color: Color(0xFF67A948)),
            borderRadius: BorderRadius.circular(5),
          ),
          isDense: true),
      value: value,
      validator: validator,
      items: items,
      onChanged: onChanged,
      padding: EdgeInsets.zero,
    );
  }
}
