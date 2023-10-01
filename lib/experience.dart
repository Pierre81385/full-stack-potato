import 'package:flutter/material.dart';
import 'package:full_potatop/input.dart';
import 'package:full_potatop/skills.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    'I have experience building applications for personal, professional, and educational projects primarily using React or Flutter, and integrating a wide variety of technologies.  '),
              ),
              ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(
                        'https://drive.google.com/drive/folders/1B1LIT2VLmOSoacpoUlpuGvaWajMmVv1c?usp=sharing'));
                  },
                  child: const Text('Resume & Coverletter'))
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
