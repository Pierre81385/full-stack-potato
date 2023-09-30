import 'package:flutter/material.dart';
import 'package:full_potatop/firestore_comments.dart';

class AboutComponent extends StatefulWidget {
  const AboutComponent({
    super.key,
  });

  @override
  State<AboutComponent> createState() => _AboutComponentState();
}

class _AboutComponentState extends State<AboutComponent> {
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * .1,
              width: double.infinity,
            ),
            Icon(
              Icons.account_circle,
              size: 50,
            ),
            Text('About Me'),
          ],
        ),
        SizedBox(
          height: height * .1,
          width: double.infinity,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: width < 500 ? width : width * .5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "I'm a full stack developer out of Denver, CO with a BBA in Economics and a Certificate from the University of Denver in Full Stack Web Development.",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "I currently work for ClickUp as a Technical Support Specialist with a focus on the API as our team's API Subject Matter Expert. In this capacity, in addition to assessing general technical questions about ClickUp, I speciailize in OAUTH 2.0 configuration, API request troubleshooting, and assiting with custom API integration issues. I've also created custom scripts for testing specific scnarios like inconsistency in large scale chained API requests, tests for the use of undocumented API query or body parameters, and documented private API endpoints to retrieve key data helpful for troubleshooting common errors. Additionaly I've contributed to updates and improvments on the Public API documentation as the product has continued to evolve.",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "In my free time I've continued to expand my knowlege through a variety of personal projects. Leaving the bootcamp with a solid foundation in the MERN stack, I've since expanded into projects using AWS (like S3 as a backend and EC2 hosting), Flutter and Dart mobile and web applications, and using Firebase for Authentication, Cloud storage, or NoSQL database solutions. Currently my mobile application for tracking light rail trains around Denver using GTFS real time data streams is deployable via TestFlight on iOS devices, and this experience has led to recent opportunities in the ClickUp Mobile Development team.  I currently contribute code fixes for bugs and feature requests for the ClickUp mobile app as a professional side project!",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/lilme.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .1,
              width: double.infinity,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.chat_sharp,
                  size: 50,
                ),
                Text('Leave a Comment'),
              ],
            ),
            SizedBox(
              height: height * .1,
              width: double.infinity,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Feel free to leave me a message here with any comments or questions, or just to say hi!',
                    textAlign: TextAlign.center),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: width < 500 ? width : width * .5,
                child: Card(
                  child: Comments(),
                ),
              ),
            ),
            SizedBox(
              height: height * .1,
              width: double.infinity,
            ),
            Container(
              height: height * .33,
              width: width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage("lib/assets/IMG_1256.png"))),
            )
          ],
        ),
      ],
    );
  }
}
