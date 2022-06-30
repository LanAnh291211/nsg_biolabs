class ViewBookingInfor {
  String? title;
  String? subTitle;
  ViewBookingInfor({
    this.title,
    this.subTitle,
  });
}

List<ViewBookingInfor> listViewBookingInforDemo = [
  ViewBookingInfor(
    title: 'Equipment Name',
    subTitle: 'BSC 1 (Thermo)',
  ),
  ViewBookingInfor(
    title: 'Equipment ID',
    subTitle: 'NSG-0001',
  ),

  ViewBookingInfor(
    title: 'Location',
    subTitle: 'Level 1, Main Lab Space',
  ),
  
  ViewBookingInfor(
    title: 'Datetime',
    subTitle: 'May 7 (Fri)1030 - 1200',
  ),
  
];
