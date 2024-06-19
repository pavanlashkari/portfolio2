import 'package:flutter/material.dart';
import 'package:portfolio/view/about_us/controller/about_us_controller.dart';
import 'package:get/get.dart';

class AboutUsView extends GetView<AboutUsController> {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ABOUT ME'),
      ),
    );
  }
}