import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../signin/views/signin_view.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    final SignupController ctrl = Get.put(SignupController());
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
                              "Create Account with Email",
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
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: ctrl.checkBool.value,
                                    onChanged: (value) {
                                      ctrl.checkBool.value =
                                          !ctrl.checkBool.value;
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'I agree to the ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Terms & Conditions',
                                          style: TextStyle(
                                            color: Color(0xffF50057),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {},
                                        ),
                                        TextSpan(
                                          text: ' and ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Privacy Policy',
                                          style: TextStyle(
                                            color: Color(0xffF50057),
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
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
                              child: Text("Create Account"),
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
                                  "Already have an account ?",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(() => SigninView());
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
