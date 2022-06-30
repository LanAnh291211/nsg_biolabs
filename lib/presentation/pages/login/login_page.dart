import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/card%20item/view_booking_item.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Padding(
          padding: CustomEdgeInsets.symmetric(horizontal: 16),
          child: ViewBookingItem(
            label: 'abc',
            content: 'abc',
          ),
        ),
      ),
    );
  }
}
