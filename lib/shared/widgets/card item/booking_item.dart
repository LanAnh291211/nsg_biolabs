import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nsg_biolabs/shared/config/config.dart';

import '../../../data/model/infor.dart';

class BookingItem extends StatelessWidget {
  final Infor infor;

  const BookingItem({Key? key, required this.infor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h, left: 24.w, right: 24.w),
      padding: EdgeInsets.only(left: 32.w, top: 15.h, bottom: 15.h),
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(color: infor.color!, width: 5.w),
              top: BorderSide(color: AppColors.gainsboro, width: 1.w),
              bottom: BorderSide(color: AppColors.gainsboro, width: 1.w),
              right: BorderSide(color: AppColors.gainsboro, width: 1.w))),
      child: Row(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                infor.title!,
                style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                infor.subTitle!,
                style: CustomTextStyle.regular(color: AppColors.black, fontSize: FontSize.medium),
              ),
              Container(
                // padding: EdgeInsets.zero,
                // margin: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(0),
                      margin: EdgeInsets.zero,
                      child: Text(
                        infor.releaseDay!,
                        style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.small),
                      ),
                    ),
                    Text(
                      infor.rate!,
                      style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.small),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
