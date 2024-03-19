import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClkTextFieldWidget extends StatelessWidget {
  const ClkTextFieldWidget({
    super.key,
    this.title,
    this.contentPadding,
    this.backgroundColor,
    this.focusNode,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.prefix,
    this.keyboardType,
    this.hintTextStyle,
    this.textInputAction,
    this.hintText,
    this.textAlignPosition,
    this.inputFormatters,
    this.focusBorderWidth,
    this.focusColor,
    this.borderWidth,
    this.borderColor,
    this.enabled,
    this.labelText,
    this.borderRadius,
    this.controller,
    this.onChanged,
    this.maxLines,
    this.borderSide,
    this.validator,
  });
  final String? title;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backgroundColor;
  final FocusNode? focusNode;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final TextInputAction? textInputAction;
  final String? hintText;
  final TextAlign? textAlignPosition;
  final List<TextInputFormatter>? inputFormatters;
  final double? focusBorderWidth;
  final Color? focusColor;
  final double? borderWidth;
  final Color? borderColor;
  final int? maxLines;
  final bool? enabled;
  final String? labelText;

  final BorderRadius? borderRadius;
  final TextEditingController? controller;

  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final BorderSide? borderSide;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            width: 1,
            color: Color.fromRGBO(103, 110, 118, 0.08),
          )),
      elevation: 0,
      child: TextFormField(
        focusNode: focusNode,
        onChanged: onChanged,
        controller: controller,
        validator: validator,
        enabled: enabled,
        maxLines: 1,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.grey[400],
            fontWeight: FontWeight.w500,
            fontFamily: 'Axiforma'),
        textAlign: textAlignPosition ?? TextAlign.left,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          isDense: true,
          prefix: prefix,
          labelStyle: const TextStyle(
            color: Color(0xFF67A948),
            fontSize: 8,
            fontFamily: 'Söhne',
            fontWeight: FontWeight.w700,
          ),
          suffixIcon: suffixIcon,
          suffixIconColor: suffixIconColor ?? Colors.grey[400],
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor ?? Colors.grey[400],
          filled: true,
          contentPadding: contentPadding,
          fillColor:
              backgroundColor ?? Theme.of(context).colorScheme.background,
          hintText: hintText,
          labelText: labelText,
          hintStyle: hintTextStyle,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: focusBorderWidth ?? 1.0,
                color: const Color.fromRGBO(103, 110, 118, 0.08),
              )),
          enabled: enabled ?? true,
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
            borderSide: borderSide ??
                BorderSide(
                  width: borderWidth ?? 1.0,
                  color:
                      borderColor ?? const Color.fromRGBO(103, 110, 118, 0.08),
                ),
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8),
            borderSide: borderSide ??
                BorderSide(
                  width: borderWidth ?? 1.0,
                  color:
                      borderColor ?? const Color.fromRGBO(103, 110, 118, 0.08),
                ),
          ),
        ),
      ),
    );
  }
}
