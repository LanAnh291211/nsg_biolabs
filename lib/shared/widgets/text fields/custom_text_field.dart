import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nsg_biolabs/shared/config/border_radius.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/extensions/image_assets_path_extension.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final double borderRadius;
  final String? Function(String?)? validator;
  final String? suffixIcon;
  final bool obscureText;
  final double suffixIconSize;
  final TextInputType? keyboardType;
  final void Function()? suffixIconOnTap;

  const CustomTextField({
    super.key,
    this.label = "",
    required this.hintText,
    this.borderRadius = AppRadius.radius50,
    this.controller,
    this.suffixIcon,
    this.validator,
    this.suffixIconSize = IconSize.verySmall,
    this.keyboardType,
    this.suffixIconOnTap,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: label.isEmpty ? false : true,
          child: Container(
              margin: CustomEdgeInsets.only(bottom: Space.spacing7),
              child: Text(
                label.tr,
                style: CustomTextStyle.regular(),
              )),
        ),
        TextFormField(
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
          style: CustomTextStyle.regular(),
          decoration: InputDecoration(
              hintText: hintText.tr,
              hintStyle: CustomTextStyle.regular(color: AppColors.nobel),
              suffixIcon: suffixIcon == null
                  ? null
                  : Container(
                      margin: CustomEdgeInsets.only(right: Space.spacing21),
                      child: GestureDetector(
                        onTap: suffixIconOnTap,
                        child: SvgPicture.asset(
                          suffixIcon!.getSVGImageAssets,
                        ),
                      ),
                    ),
              suffixIconConstraints: BoxConstraints(maxHeight: suffixIconSize.h),
              isDense: true,
              contentPadding: CustomEdgeInsets.symmetric(horizontal: Space.spacing21, vertical: Space.spacing17),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius.r),
                borderSide: const BorderSide(color: AppColors.gainsboro),
              )),
        )
      ],
    );
  }
}
