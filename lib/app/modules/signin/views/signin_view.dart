import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:welcome_signin_signup/app/modules/signup/views/signup_view.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Color(0xffF50057),
                                ),
                                iconSize: 25,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF50057).withOpacity(0.15),
                              ),
                            ),
                            Text(
                              "Log in to your account",
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your email : ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Color(0xffFFE8E8)),
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      hintText: "Example@gmail.com",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Password : ",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Color(0xffFFE8E8)),
                                  child: TextField(
                                    obscureText: true,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      hintText: "Password",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              style: TextButton.styleFrom(
                                primary: Colors.black,
                                minimumSize: Size(0, 0),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Sign in"),
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
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Doesn’t have an account ? ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(() => SignupView());
                                  },
                                  child: Text(
                                    "Sign up",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
