import 'package:flutter/material.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/res/constants.dart';
import 'package:portfolio/view%20model/getx_controllers/projects_controller.dart';
import 'package:portfolio/view/projects/components/project_deatail.dart';
import 'package:get/get.dart';
import 'image_viewer.dart';

class ProjectStack extends GetView<ProjectController> {

  const ProjectStack({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: (value) {
          controller.onHover(index, value);
        },
        onTap: () {
          ImageViewer(context, projectList[index].image);
        },
        borderRadius: BorderRadius.circular(30),
        child: AnimatedContainer(
          padding: const EdgeInsets.only(
              left: defaultPadding, right: defaultPadding, top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: ProjectDetail(
            index: index,
          ),
        ));
  }
}