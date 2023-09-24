import 'package:flutter/material.dart';
import 'package:full_potatop/gh.dart';

class ProjectsComponent extends StatefulWidget {
  const ProjectsComponent({
    super.key,
  });

  @override
  State<ProjectsComponent> createState() => _ProjectsComponentState();
}

class _ProjectsComponentState extends State<ProjectsComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double height = media.height;
    double width = media.width;
    return width < 500
        ? Column(
            children: [
              GitHubComponent(),
            ],
          )
        : Column(
            children: [
              GitHubComponent(),
            ],
          );
  }
}
