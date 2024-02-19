import 'package:flutter/material.dart';
import 'package:zbuy/utils/app_constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.appMainColor,
        centerTitle: true,
        title: Text(
          AppConstants.appMainName,
          style: TextStyle(color: AppConstants.appTextColor),
        ),
      ),
    );
  }
}
