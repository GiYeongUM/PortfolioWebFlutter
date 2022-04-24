import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:giyeong_um_porfolio_page/controller/main_controller.dart';

import '../theme_data.dart';
import '../translate.dart';
import 'dart:math' as math;

import '../widget/custom_text.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  var translateController = Get.find<TranslateController>();
  var mainController = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        controller: mainController.scrollController.value,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/logo_gyu.svg", color: primaryColorTheme(context),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  // CustomTextWidget(text: translateController.testText.value, style: medium10TextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        child: Transform.rotate(
          angle: math.pi / 2,
          child: Icon(Icons.double_arrow, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          translateController.translateStart(translateController.scrollText.value);
        },
        child: const Icon(Icons.g_translate),

      ),
    );
  }
}
