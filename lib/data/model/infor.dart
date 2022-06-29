import 'package:flutter/material.dart';

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
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: Colors.pink[100],
    title: 'BSC 1 (Thermo)',
    subTitle: 'Level 1, Main Lab Space',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
  Infor(
    color: Colors.purple[200],
    title: 'Meeting Room 2',
    subTitle: 'Level 5, Common Lab Space ',
    releaseDay: 'May 7 (Fri)',
    rate: '1030 - 1200',
  ),
];
