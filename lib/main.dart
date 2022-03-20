import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        checkboxTheme: CheckboxThemeData(
          side: MaterialStateBorderSide.resolveWith(
            (_) => const BorderSide(
              width: 2,
              color: Color(0xffF50057),
            ),
          ),
          fillColor: MaterialStateProperty.all(
            Color(0xffF50057),
          ),
          checkColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    ),
  );
}
