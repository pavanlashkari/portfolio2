import 'dart:async';
import 'package:portfolio/routes/router_name.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashController extends GetxController {
  RxBool loading = true.obs;

  @override
  void onInit() {
    super.onInit();
      Timer(const Duration(seconds: 3), () {
        try {
          Get.context?.go(AppRoute.home);
          loading.value = false;
        } catch (e) {
          print("Navigation error: $e");
        }
      });
  }
}
