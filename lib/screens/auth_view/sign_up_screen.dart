import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zbuy/screens/auth_view/sign_in_screen.dart';

import '../../utils/app_constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.appSecondryColor,
        title: Text(
          'Sign Up',
          style: TextStyle(color: AppConstants.appTextColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 50,
              ),
              Text(
                'Wellcome to Zbuy',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppConstants.appSecondryColor),
              ),
              SizedBox(
                height: Get.height / 30,
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Phone',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: Get.height / 200,
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      hintText: 'City',
                      prefixIcon: Icon(Icons.location_city),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: Get.height / 200,
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Material(
                child: Container(
                  width: Get.width / 2,
                  height: Get.height / 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppConstants.appSecondryColor),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: AppConstants.appTextColor, fontSize: 20),
                      )),
                ),
              ),
              SizedBox(
                height: Get.height / 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: AppConstants.appSecondryColor, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () => Get.offAll(() => SignInScreen()),
                      child: Text(
                        'SignIn',
                        style: TextStyle(
                            color: AppConstants.appSecondryColor, fontSize: 20),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
