import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/routes/router_name.dart';
import 'package:portfolio/view/intro/components/animated_texts_componenets.dart';
import 'package:portfolio/view/splash/componenets/animated_loading_text.dart';
import 'package:portfolio/view/splash/controller/splash_controller.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final controller = Get.put(SplashController());

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      try {
        GoRouter.of(context).go(AppRoute.home)       ;
        controller.loading.value = false;
      } catch (e) {
        print("Navigation error: $e");
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100,height: 100,),
            SizedBox(height: defaultPadding,),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}