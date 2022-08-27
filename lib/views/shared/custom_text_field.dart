import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.hintText = "Input text",
    this.suffixIcon,
    this.borderColor = Colors.white54,
    this.textStyle = const TextStyle(color: Colors.white)
  }) : super(key: key);

  final String label;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon;
  final Color borderColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        keyboardType: textInputType,
        // onSaved: onSaved,
        // validator: validator,
        controller: controller,
        // style: textTheme.bodyText1,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          // fillColor: Colors.white,
          labelText: label,
          labelStyle: textStyle,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.sp,
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(2.sp),
            ),
            gapPadding: 4.sp,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.sp,
              // color: AppColors.errorColor,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(2.sp),
            ),
            gapPadding: 4.sp,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.sp,
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(2.sp),
            ),
            gapPadding: 4.sp,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.sp,
              // color: AppColors.greyColor,
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(2.sp),
            ),
            gapPadding: 4.sp,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
        style: textStyle,
      ),
    );
  }
}
