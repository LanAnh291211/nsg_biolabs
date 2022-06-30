import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

class ViewBookingItem extends StatelessWidget {
  final String label;
  final String content;

  const ViewBookingItem({
    super.key,
    required this.label,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: CustomTextStyle.regular(
            color: AppColors.corduroy,
            fontSize: FontSize.veryLarge,
          ),
        ),
        Text(
          content,
          style: CustomTextStyle.medium(
            color: AppColors.black,
            fontSize: FontSize.veryLarge,
          ),
        )
      ],
    );
  }
}
