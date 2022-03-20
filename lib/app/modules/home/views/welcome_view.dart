import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:welcome_signin_signup/app/modules/signin/views/signin_view.dart';
import 'package:welcome_signin_signup/app/modules/signup/views/signup_view.dart';

import '../controllers/home_controller.dart';

class WelcomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    "Find your travel buddy",
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Keep calm and go around the world",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Image.asset(
                  "assets/images/driver.png",
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => SignupView());
                    },
                    child: Text("Sign up with email"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      primary: Color(0xffF50057),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          width: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Sign up with google"),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Color(0xffF50057),
                      minimumSize: Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: BorderSide(width: 1, color: Color(0xffF50057)),
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(SigninView());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Color(0xffF50057),
                          minimumSize: Size(0, 0),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
