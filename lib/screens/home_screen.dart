import 'package:flutter/material.dart';
import 'package:restore_the_skill/constants.dart';
import 'package:restore_the_skill/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar HomeAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ],
      elevation: 0,
      title: Text(
        "مرحبًا بكم في متجر الإلكترونيات",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: false,
      backgroundColor: kPrimaryColor,
    );
  }
}
