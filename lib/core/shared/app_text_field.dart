import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/sizes.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      this.validator,
      this.inputFormatters,
      this.controller,
      this.borderSize = AppSizes.s1,
      this.borderColor,
      this.fillColor,
      this.hintText,
      this.labelText,
      this.hintStyle,
      this.labelStyle,
      this.obscureText = false,
      this.onTap,
      this.prefixIcon,
      this.suffixIcon,
      this.constraints,
      this.readOnly = false,
      this.onChanged,
      this.onFieldSubmitted,
      this.focusNode});
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final double? borderSize;
  final Color? borderColor;
  final Color? fillColor;
  final String? hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final bool? obscureText;
  final Function()? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? constraints;
  final bool readOnly;
  final void Function(String)? onChanged;

  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      keyboardAppearance: Brightness.dark,
      obscureText: obscureText!,
      onTap: onTap,
      validator: validator,
      inputFormatters: inputFormatters,
      keyboardType: TextInputType.name,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderSize!),
            borderSide: BorderSide.none),

        filled: true,

        constraints: constraints,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(borderSize!),
        //   //borderSide: BorderSide(color: borderColor!),
        // ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(borderSize!),
        //   //borderSide: BorderSide(color: borderColor!),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(borderSize!),
        //   //borderSide: BorderSide(color: borderColor!),
        // ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(borderSize!),
        //  // borderRadius: BorderRadius.circular(borderSize!),
        // ),
        hintText: hintText,
        hintStyle: hintStyle,
        fillColor: fillColor,
      ),
    );
  }
}
