import 'package:flutter/material.dart';

class VIewBooking extends StatefulWidget {
  VIewBooking({Key? key}) : super(key: key);

  @override
  State<VIewBooking> createState() => _VIewBookingState();
}

class _VIewBookingState extends State<VIewBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Booking'),
         leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,),
              onPressed: () {
                
              }),
              
        actions: <Widget>[
          IconButton(icon:Icon(Icons.arrow_back_ios),onPressed: (){},  )
        ],
      ),
    );
  }

  
}