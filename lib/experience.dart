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
              ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(
                        'https://drive.google.com/drive/folders/1B1LIT2VLmOSoacpoUlpuGvaWajMmVv1c?usp=sharing'));
                  },
                  child: const Text('Resume & Coverletter')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    'I have experience building applications for personal, professional, and educational projects primarily using React or Flutter, and integrating a wide variety of technologies. '),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      textAlign: TextAlign.center,
                      'I am particularlly proud that the University of Denver Coding Bootcamp gave me the confidence and knowlege to keep learning and experimenting successfully.  While the Bootcamp focused heavily on the MERN stack, I was encouraged to try Flutter and Dart during a job interview and discovered I found it to be more intuitive for styling and composition, lending itself to rapid project development. This is my prefered framework and most of my recent mobile projects are built with Flutter.  That said, there is still so much support and documentation for React based applications and I make a point of using this framework for web based projects needing a custom API.')),
              SkillStack(
                width: width,
                height: height,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    'Recent Flutter Projects viewable here and in my GitHub repos demonstrate use of the Google Maps API to generate maps showing user locations, drawn routes, and points of interest consumed from GTFS data pulled via the Colorado RTD API. Additionally I frequently use Google Firebase for authenticaion, file storage, and NOSQL database data storage. My Flutter projects have also given me experience preparing apps for deployment to the Apple App Store and for testing distribution in Apple TestFlight.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    'My latest React app, \'AOL | CHAT\' incorporates the full MERN stack with added functionality from Axios, JWT, Bcrypt, and Socket.io.  My GitHub repository also has example projects I created using Appollo GraphQL for more targeted API requests, MySQL for the backend database, and AWS for S3 storage and EC2 deployment. There is no current deployment on EC2 due to its ongoing cost, but I\'m eager to explore AWS more, specifically with regard to the use of Rekognition.'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * .1,
          width: double.infinity,
        ),
      ],
    );
  }
}
