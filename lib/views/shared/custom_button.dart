import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 40.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.white),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(color: Colors.red),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
