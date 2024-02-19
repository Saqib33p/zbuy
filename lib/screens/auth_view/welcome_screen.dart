import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zbuy/utils/app_constants.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.appSecondryColor,
        title: Text(
          'Welcome to Zbuy',
          style: TextStyle(color: AppConstants.appTextColor),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: AppConstants.appSecondryColor,
              child: Lottie.asset('assets/images/splash_screen.json'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Happy Shoping',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: Get.height / 30,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppConstants.appSecondryColor),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/googleicon.png',
                      height: Get.height / 12,
                      width: Get.width / 12,
                    ),
                    label: Text(
                      'Sign in with google',
                      style: TextStyle(
                          color: AppConstants.appTextColor, fontSize: 16),
                    )),
              ),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppConstants.appSecondryColor),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail,
                      color: AppConstants.appTextColor,
                      size: 30,
                    ),
                    label: Text(
                      'Sign in with email',
                      style: TextStyle(
                          color: AppConstants.appTextColor, fontSize: 16),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
