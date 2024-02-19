import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:zbuy/screens/auth_view/sign_up_screen.dart';
import 'package:zbuy/utils/app_constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstants.appSecondryColor,
            title: Text(
              'Sign In',
              style: TextStyle(color: AppConstants.appTextColor),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(
                children: [
                  isKeyboardVisible
                      ? Text(
                          'Wellcome to Zbuy',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppConstants.appSecondryColor),
                        )
                      : Column(
                          children: [
                            Container(
                              height: Get.height / 3,
                              width: Get.width / 1,
                              color: AppConstants.appSecondryColor,
                              child: Lottie.asset(
                                  'assets/images/splash_screen.json'),
                            )
                          ],
                        ),
                  SizedBox(
                    height: Get.height / 30,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email),
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
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                              color: AppConstants.appSecondryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ),
                  SizedBox(
                    height: Get.height / 200,
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
                            'Sign In',
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
                        'Dont have an account?',
                        style: TextStyle(
                            color: AppConstants.appSecondryColor, fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () => Get.offAll(() => SignUpScreen()),
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                                color: AppConstants.appSecondryColor,
                                fontSize: 20),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
