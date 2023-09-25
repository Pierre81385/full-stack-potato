import 'package:flutter/material.dart';
import 'package:full_potatop/gh.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        : SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: height * .5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/rtd_ss.png"),
                              fit: width < 500
                                  ? BoxFit.fitHeight
                                  : BoxFit.fitHeight),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: height * .5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/match_ss.png"),
                              fit: width < 500
                                  ? BoxFit.fitHeight
                                  : BoxFit.fitHeight),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: height * .5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/ecom.gif"),
                              fit: width < 500
                                  ? BoxFit.fitHeight
                                  : BoxFit.fitWidth),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
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
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
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
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
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
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
                GitHubComponent(),
                SizedBox(
                  height: height * .1,
                  width: double.infinity,
                ),
              ],
            ),
          );
  }
}
