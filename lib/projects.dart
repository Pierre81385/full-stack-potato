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
  late bool hovering;
  late int details;

  @override
  void initState() {
    project1 = false;
    project2 = false;
    project3 = false;
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
              InkWell(
                onTap: () {
                  setState(() {
                    if (details != 1) {
                      details = 1;
                      project1 = true;
                      project2 = false;
                      project3 = false;
                    } else {
                      details = 0;
                      project1 = false;
                      project2 = false;
                      project3 = false;
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
                    } else {
                      details = 0;
                      project1 = false;
                      project2 = false;
                      project3 = false;
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
                      project3 = true;
                    } else {
                      details = 0;
                      project1 = false;
                      project2 = false;
                      project3 = false;
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
                                          "lib/assets/ecom.gif"),
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
                                                "Scaling Lamp",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'A MERN stack application modeling an e-commerce website to demonstrate full CRUD funtionality allowing a user to browse, create, update, and delete product.'),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                  'User and product information is stored on MongoDB and accessed through a GraphQL assisted Express API. User authenticaion is handled by JWTAuth Tokens saved to LocalStorage.  React Bootstrap was used for styling.'),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  launchUrl(Uri.parse(
                                                      'https://github.com/Pierre81385/scaling-lamp'));
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
                                        'lib/assets/graphql-plain-wordmark.svg',
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
                            } else {
                              details = 0;
                              project1 = false;
                              project2 = false;
                              project3 = false;
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
                                                              FontWeight.bold),
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
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        launchUrl(Uri.parse(
                                                            'https://github.com/Pierre81385/rtd_flutter'));
                                                      },
                                                      child: const Text(
                                                          'Git Repo'))
                                                ],
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
                            } else {
                              details = 0;
                              project1 = false;
                              project2 = false;
                              project3 = false;
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
                                                              FontWeight.bold),
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
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        launchUrl(Uri.parse(
                                                            'https://github.com/Pierre81385/matchdotdog'));
                                                      },
                                                      child: const Text(
                                                          'Git Repo'))
                                                ],
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
                            } else {
                              details = 0;
                              project1 = false;
                              project2 = false;
                              project3 = false;
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
                                                  "lib/assets/ecom.gif"),
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
                                                      "Scaling Lamp",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Text(
                                                        'A MERN stack application modeling an e-commerce website to demonstrate full CRUD funtionality allowing a user to browse, create, update, and delete product.'),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Text(
                                                        'User and product information is stored on MongoDB and accessed through a GraphQL assisted Express API. User authenticaion is handled by JWTAuth Tokens saved to LocalStorage.  React Bootstrap was used for styling.'),
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        launchUrl(Uri.parse(
                                                            'https://github.com/Pierre81385/scaling-lamp'));
                                                      },
                                                      child: const Text(
                                                          'Git Repo'))
                                                ],
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
                                                'lib/assets/graphql-plain-wordmark.svg',
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
