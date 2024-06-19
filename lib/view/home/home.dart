import 'package:flutter/material.dart';
import 'package:portfolio/view/about_us/view/about_us_view.dart';
import 'package:portfolio/view/intro/introduction.dart';
import 'package:portfolio/view/main/main_view.dart';
import 'package:portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      const AboutUsView(),
      ProjectsView(),
    ]);
  }
}
