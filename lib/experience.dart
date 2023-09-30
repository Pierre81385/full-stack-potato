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
        : Column(
            children: [
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.airline_stops,
                    size: 50,
                  ),
                  Text('Skills Stack'),
                ],
              ),
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
              SizedBox(
                width: width < 500 ? width : width * .5,
                child: Column(
                  children: [
                    Text(
                        'I have experience building applications for personal, professional, and educational projects primarily using React or Flutter.  ')
                  ],
                ),
              ),
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
              SkillStack(
                width: width,
                height: height,
              ),
            ],
          );
  }
}
