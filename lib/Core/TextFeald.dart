import 'package:flutter/material.dart';

class CustomTextFeald extends StatelessWidget {
  const CustomTextFeald({
    super.key, this.suffixIcon, this.onTap,
  });
  final Widget ?suffixIcon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap:onTap ,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon:suffixIcon ,
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.grey)),
          errorBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red)),
        ));
  }
}
