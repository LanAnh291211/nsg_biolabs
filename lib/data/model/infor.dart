import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/app_colors.dart';

class Infor {
  Color? color;
  String? title;
  String? subTitle;
  String? releaseDay;
  String? rate;
  Infor({
    required this.color,
    this.title = '',
    this.subTitle = '',
    required this.releaseDay,
    required this.rate,
  });
}

List<Infor> inforListDemo = [
  Infor(
    color: AppColors.carouselPink,
    title: 'BSC 1 (Thermo)',
    subTitle: 'Level 1, Main Lab Space',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: AppColors.lavender,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: AppColors.carouselPink,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: AppColors.columbiaBlue,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: AppColors.carouselPink,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: AppColors.shalimar,
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
];
