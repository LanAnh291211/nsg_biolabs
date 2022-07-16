import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/buttons/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"), // title login app bar
        ),
        body: Padding(
          padding: CustomEdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(label: "label", onPressed: () {}), // login button
        ),
      ),
    );
  }
}
