import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';

class AppPhoneField extends StatefulWidget {
  final TextEditingController controller;
  final Widget? icon;
  final String hintText;
  final double? width;
  final bool textCenter;
  final double? height;
  final Function(String)? validate;
  const AppPhoneField({
    Key? key,
    required this.controller,
    this.textCenter = false,
    this.icon,
    this.validate,
    required this.hintText,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  State<AppPhoneField> createState() => _AppPhoneFieldState();
}

class _AppPhoneFieldState extends State<AppPhoneField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 33.h,
      width: widget.width ?? double.infinity,
      margin: const EdgeInsets.only(
        bottom: 5,
      ),
      child: TextFormField(
        controller: widget.controller,
        textAlign: widget.textCenter ? TextAlign.center : TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        validator: (e) {
          return widget.validate != null ? widget.validate!(e!) : null;
        },
        decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hintStyle: AppText.extraBold
                .copyWith(color: AppColors.grey300, fontSize: 14),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppColors.grey400, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: AppColors.whiteColor,
            suffixIcon: widget.icon),
      ),
    );
  }
}
