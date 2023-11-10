import 'package:flutter/material.dart';
import 'package:full_potatop/gh.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_potatop/input.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsComponent extends StatefulWidget {
  const ProjectsComponent({
    super.key,
  });

  @override
  State<ProjectsComponent> createState() => _ProjectsComponentState();
}

class _ProjectsComponentState extends State<ProjectsComponent> {
  late bool project1;
  late bool project2;
  late bool project3;
  late bool project4;
  late bool hovering;
  late int details;

  @override
  void initState() {
    project1 = false;
    project2 = false;
    project3 = false;
    project4 = false;
    hovering = false;
    details = 0;
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
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_tree_sharp,
                    size: 50,
                  ),
                  Text('Featured Projects'),
                ],
              ),
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
              //////////////////////////////////////////////////////////////////(1)
              InkWell(
                onTap: () {
                  setState(() {
                    if (details != 1) {
                      details = 1;
                      project1 = true;
                      project2 = false;
                      project3 = false;
                      project4 = false;
                    } else {
                      details = 0;
                      project1 = false;
                      project2 = false;
                      project3 = false;
                      project4 = false;
                    }
                  });
                },
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    project1 = value;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: SizedBox(
                    height: height * .5,
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      elevation: project1 ? 15 : 0,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: const AssetImage(
                                        "lib/assets/rtd_ss.png"),
                                    fit: width < 500
                                        ? BoxFit.fitHeight
                                        : BoxFit.fitHeight),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: details == 1
                                ? SizedBox(
                                    height: height * .3,
                                    width: width,
                                    child: Card(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "Denver Train Tracker",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'This Flutter app built for iOS uses GTFS-RT data feeds to show users a list of trains, the train position on Google Maps along a polyline route relative to their own, and alert information updated every 2 minutes.'),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'This project helped me learn how to consume GTFS data, draw polyline routes on a Google Map, and deploy apps to Apples Test Flight program to testing and distribution.'),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      'https://github.com/Pierre81385/rtd_flutter'));
                                                },
                                                child: const Text('Git Repo'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'lib/assets/dart-original-wordmark.svg',
                                        semanticsLabel: 'dart icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/flutter-original.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/materialui-original.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/apple-original.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                    ],
                                  ),
                          ),
                          SizedBox(
                            height: height * .05,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (details != 2) {
                      details = 2;
                      project1 = false;
                      project2 = true;
                      project3 = false;
                      project4 = false;
                    } else {
                      details = 0;
                      project1 = false;
                      project2 = false;
                      project3 = false;
                      project4 = false;
                    }
                  });
                },
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    project2 = value;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: SizedBox(
                    height: height * .5,
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      elevation: project2 ? 15 : 0,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: const AssetImage(
                                        "lib/assets/match_ss.png"),
                                    fit: width < 500
                                        ? BoxFit.fitHeight
                                        : BoxFit.fitHeight),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: details == 2
                                ? SizedBox(
                                    height: height * .3,
                                    width: width,
                                    child: Card(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "\"Sniffer\"",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'A social networking app for dog owners for doggy play dates.  Users can create dog profiles, chat with dogs seen in the tinder style card feed, find dogs near them on a Google Map, and save a list of favorites.'),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Firebase Firestore provides the backend for user and dog information and chat transcripts, image storage is through Firebase Cloud Storage, and Firebase Auth provides basic authentication. Google Maps API provides the map view.'),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      'https://github.com/Pierre81385/matchdotdog'));
                                                },
                                                child: const Text('Git Repo'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'lib/assets/dart-original-wordmark.svg',
                                        semanticsLabel: 'dart icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/flutter-original.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/materialui-original.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/firebase-plain-wordmark.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/apple-original.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                    ],
                                  ),
                          ),
                          SizedBox(
                            height: height * .05,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (details != 3) {
                      details = 3;
                      project1 = false;
                      project2 = false;
                      project3 = false;
                      project4 = true;
                    } else {
                      details = 0;
                      project1 = false;
                      project2 = false;
                      project3 = false;
                      project4 = false;
                    }
                  });
                },
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    project3 = value;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: SizedBox(
                    height: height * .5,
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      elevation: project3 ? 15 : 0,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          "lib/assets/api_response.gif"),
                                      fit: width < 500
                                          ? BoxFit.fitHeight
                                          : BoxFit.fitHeight),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: details == 3
                                ? SizedBox(
                                    height: height * .3,
                                    width: width,
                                    child: Card(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "\"API\": {RESPONSE}",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'OK this week I created a mobile app that breaks down and displays the key/value pairs of JSON objects into an easy to read list, and additional pages are generated if the value of a given key is another object.  This example breaks down a login POST request response into something more readable and manageable.  The response breakdown component(s) take a JSON/Map<String, dynamic> object, so just swap out the request form for whatever API request you want 🤷🏻‍♂️and see what you get!  (Thought it looked nice modeled after an old command line interface)  '),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'This was primarily a test to create a way to get a JSON web token from a login POST request to use in other requests. But it was also a personal challenge to determine how to extract the keys, and handle this for objects embedded in objects at multiple levels dynaically.'),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      'https://github.com/Pierre81385/my_clickup'));
                                                },
                                                child: const Text('Git Repo'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'lib/assets/mongodb-original-wordmark.svg',
                                        semanticsLabel: 'dart icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/express-original-wordmark.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/react-original-wordmark.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/nodejs-plain-wordmark.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/socketio-original-wordmark.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                    ],
                                  ),
                          ),
                          SizedBox(
                            height: height * .05,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (details != 4) {
                      details = 4;
                      project1 = false;
                      project2 = false;
                      project3 = false;
                      project4 = false;
                    } else {
                      details = 0;
                      project1 = false;
                      project2 = false;
                      project3 = false;
                      project4 = true;
                    }
                  });
                },
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    project4 = value;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: SizedBox(
                    height: height * .5,
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      elevation: project4 ? 15 : 0,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          "lib/assets/api_response.gif"),
                                      fit: width < 500
                                          ? BoxFit.fitHeight
                                          : BoxFit.fitHeight),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: details == 4
                                ? SizedBox(
                                    height: height * .3,
                                    width: width,
                                    child: Card(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "\"API\": {RESPONSE}",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'OK this week I created a mobile app that breaks down and displays the key/value pairs of JSON objects into an easy to read list, and additional pages are generated if the value of a given key is another object.  This example breaks down a login POST request response into something more readable and manageable.  The response breakdown component(s) take a JSON/Map<String, dynamic> object, so just swap out the request form for whatever API request you want 🤷🏻‍♂️and see what you get!  (Thought it looked nice modeled after an old command line interface)  '),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'This was primarily a test to create a way to get a JSON web token from a login POST request to use in other requests. But it was also a personal challenge to determine how to extract the keys, and handle this for objects embedded in objects at multiple levels dynaically.'),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      'https://github.com/Pierre81385/my_clickup'));
                                                },
                                                child: const Text('Git Repo'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'lib/assets/flutter-original.svg',
                                        semanticsLabel: 'dart icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                      SvgPicture.asset(
                                        'lib/assets/dart-original-wordmark.svg',
                                        semanticsLabel: 'material ui icon',
                                        height: 50,
                                        width: 50,
                                      ),
                                    ],
                                  ),
                          ),
                          SizedBox(
                            height: height * .05,
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const GitHubComponent(),
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
              Icon(
                Icons.feed_outlined,
                size: 50,
              ),
              Text('Negative Feedback Form, for r/badUIbattles'),
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
              InputComponent(),
              SizedBox(
                height: height * .1,
                width: double.infinity,
              ),
            ],
          )
        : SingleChildScrollView(
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_tree_sharp,
                      size: 50,
                    ),
                    Text('Featured Projects'),
                  ],
                ),
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (details != 1) {
                              details = 1;
                              project1 = true;
                              project2 = false;
                              project3 = false;
                              project4 = false;
                            } else {
                              details = 0;
                              project1 = false;
                              project2 = false;
                              project3 = false;
                              project4 = false;
                            }
                          });
                        },
                        hoverColor: Colors.white,
                        onHover: (value) {
                          setState(() {
                            project1 = value;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: SizedBox(
                            height: height * .5,
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Colors.white,
                              elevation: project1 ? 15 : 0,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: const AssetImage(
                                                "lib/assets/rtd_ss.png"),
                                            fit: width < 500
                                                ? BoxFit.fitHeight
                                                : BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: details == 1
                                        ? SizedBox(
                                            height: height * .3,
                                            width: width,
                                            child: Card(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "Denver Train Tracker",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'This Flutter app built for iOS uses GTFS-RT data feeds to show users a list of trains, the train position on Google Maps along a polyline route relative to their own, and alert information updated every 2 minutes.'),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'This project helped me learn how to consume GTFS data, draw polyline routes on a Google Map, and deploy apps to Apples Test Flight program to testing and distribution.'),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            launchUrl(Uri.parse(
                                                                'https://github.com/Pierre81385/rtd_flutter'));
                                                          },
                                                          child: const Text(
                                                              'Git Repo')),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'lib/assets/dart-original-wordmark.svg',
                                                semanticsLabel: 'dart icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/flutter-original.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/materialui-original.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/apple-original.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                            ],
                                          ),
                                  ),
                                  SizedBox(
                                    height: height * .05,
                                    width: double.infinity,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (details != 2) {
                              details = 2;
                              project1 = false;
                              project2 = true;
                              project3 = false;
                              project4 = false;
                            } else {
                              details = 0;
                              project1 = false;
                              project2 = false;
                              project3 = false;
                              project4 = false;
                            }
                          });
                        },
                        hoverColor: Colors.white,
                        onHover: (value) {
                          setState(() {
                            project2 = value;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: SizedBox(
                            height: height * .5,
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Colors.white,
                              elevation: project2 ? 15 : 0,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: const AssetImage(
                                                "lib/assets/match_ss.png"),
                                            fit: width < 500
                                                ? BoxFit.fitHeight
                                                : BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: details == 2
                                        ? SizedBox(
                                            height: height * .3,
                                            width: width,
                                            child: Card(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "\"Sniffer\"",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'A social networking app for dog owners for doggy play dates.  Users can create dog profiles, chat with dogs seen in the tinder style card feed, find dogs near them on a Google Map, and save a list of favorites.'),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'Firebase Firestore provides the backend for user and dog information and chat transcripts, image storage is through Firebase Cloud Storage, and Firebase Auth provides basic authentication. Google Maps API provides the map view.'),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            launchUrl(Uri.parse(
                                                                'https://github.com/Pierre81385/matchdotdog'));
                                                          },
                                                          child: const Text(
                                                              'Git Repo')),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'lib/assets/dart-original-wordmark.svg',
                                                semanticsLabel: 'dart icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/flutter-original.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/materialui-original.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/firebase-plain-wordmark.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/apple-original.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                            ],
                                          ),
                                  ),
                                  SizedBox(
                                    height: height * .05,
                                    width: double.infinity,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (details != 3) {
                              details = 3;
                              project1 = false;
                              project2 = false;
                              project3 = true;
                              project4 = false;
                            } else {
                              details = 0;
                              project1 = false;
                              project2 = false;
                              project3 = false;
                              project4 = false;
                            }
                          });
                        },
                        hoverColor: Colors.white,
                        onHover: (value) {
                          setState(() {
                            project3 = value;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: SizedBox(
                            height: height * .5,
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Colors.white,
                              elevation: project3 ? 15 : 0,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: const AssetImage(
                                                  "lib/assets/aol.png"),
                                              fit: width < 500
                                                  ? BoxFit.fitWidth
                                                  : BoxFit.fitHeight),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: details == 3
                                        ? SizedBox(
                                            height: height * .3,
                                            width: width,
                                            child: Card(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "AOL | CHAT",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'This is a project to explore the use of Socket.io in a new MERN stack appication, while refreshing my knowlege of the MERN stack and related technologies. The concept here was to create an essentially anonymous chat room experience that also offered private group rooms controlled by room owners, and private chatting through direct messages between users.'),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'This is a React app using React Bootstrap for styling components. The API uses Node, Express, and Axios with CORS to make requests. Users are authenticated by issuing them 24h JSON Web Tokens at login after verifying their Bcrypt encrypted username and password combinations.  Data is stored in Atlas MongoDB in two Collections with Documents storing nested arrays and objects to organize all of the information.  Realtime updates to online status, message notifications, room membership, and realtime chatting is made possible through Socket.io!'),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            launchUrl(Uri.parse(
                                                                'https://github.com/Pierre81385/shiny-bassoon-mern'));
                                                          },
                                                          child: const Text(
                                                              'Git Repo')),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'lib/assets/mongodb-original-wordmark.svg',
                                                semanticsLabel: 'dart icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/express-original-wordmark.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/react-original-wordmark.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/nodejs-plain-wordmark.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/socketio-original-wordmark.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                            ],
                                          ),
                                  ),
                                  SizedBox(
                                    height: height * .05,
                                    width: double.infinity,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (details != 4) {
                              details = 4;
                              project1 = false;
                              project2 = false;
                              project3 = false;
                              project4 = false;
                            } else {
                              details = 0;
                              project1 = false;
                              project2 = false;
                              project3 = false;
                              project4 = true;
                            }
                          });
                        },
                        hoverColor: Colors.white,
                        onHover: (value) {
                          setState(() {
                            project4 = value;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: SizedBox(
                            height: height * .5,
                            child: Card(
                              color: Colors.white,
                              surfaceTintColor: Colors.white,
                              elevation: project4 ? 15 : 0,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: const AssetImage(
                                                  "lib/assets/api_response.gif"),
                                              fit: width < 500
                                                  ? BoxFit.fitHeight
                                                  : BoxFit.fitHeight),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: details == 4
                                        ? SizedBox(
                                            height: height * .3,
                                            width: width,
                                            child: Card(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "\"API\": {RESPONSE}",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'OK this week I created a mobile app that breaks down and displays the key/value pairs of JSON objects into an easy to read list, and additional pages are generated if the value of a given key is another object.  This example breaks down a login POST request response into something more readable and manageable.  The response breakdown component(s) take a JSON/Map<String, dynamic> object, so just swap out the request form for whatever API request you want 🤷🏻‍♂️and see what you get!  (Thought it looked nice modeled after an old command line interface)  '),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'This was primarily a test to create a way to get a JSON web token from a login POST request to use in other requests. But it was also a personal challenge to determine how to extract the keys, and handle this for objects embedded in objects at multiple levels dynaically.'),
                                                    ),
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          launchUrl(Uri.parse(
                                                              'https://github.com/Pierre81385/my_clickup'));
                                                        },
                                                        child: const Text(
                                                            'Git Repo'))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'lib/assets/flutter-original.svg',
                                                semanticsLabel: 'dart icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                              SvgPicture.asset(
                                                'lib/assets/dart-original-wordmark.svg',
                                                semanticsLabel:
                                                    'material ui icon',
                                                height: 50,
                                                width: 50,
                                              ),
                                            ],
                                          ),
                                  ),
                                  SizedBox(
                                    height: height * .05,
                                    width: double.infinity,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(child: SizedBox()),
                    Flexible(child: SizedBox()),
                  ],
                ),
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
                const GitHubComponent(),
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
                Icon(
                  Icons.feed_outlined,
                  size: 50,
                ),
                Text('Negative Feedback Form, for r/badUIbattles'),
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
                InputComponent(),
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
              ],
            ),
          );
  }
}
