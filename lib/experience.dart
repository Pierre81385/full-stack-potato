import 'package:flutter/material.dart';
import 'package:full_potatop/input.dart';
import 'package:full_potatop/skills.dart';

class ExperienceComponent extends StatefulWidget {
  const ExperienceComponent({
    super.key,
  });

  @override
  State<ExperienceComponent> createState() => _ExperienceComponentState();
}

class _ExperienceComponentState extends State<ExperienceComponent> {
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
        ? Text("Mobile Experience")
        : SkillStack(
            width: width,
            height: height,
          );
  }
}
