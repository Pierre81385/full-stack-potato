import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillStack extends StatefulWidget {
  const SkillStack({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  State<SkillStack> createState() => _SkillStackState();
}

class _SkillStackState extends State<SkillStack> {
  List<SvgPicture> svg = [
    SvgPicture.asset(
      'lib/assets/amazonwebservices-original-wordmark.svg',
      semanticsLabel: 'aws icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/apple-original.svg',
      semanticsLabel: 'apple icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/bitbucket-original-wordmark.svg',
      semanticsLabel: 'bitbucket icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/bootstrap-plain-wordmark.svg',
      semanticsLabel: 'bootstrap icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/css3-original-wordmark.svg',
      semanticsLabel: 'css3 icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/dart-original-wordmark.svg',
      semanticsLabel: 'dart icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/express-original-wordmark.svg',
      semanticsLabel: 'express icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/firebase-plain-wordmark.svg',
      semanticsLabel: 'firebase icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/flutter-original.svg',
      semanticsLabel: 'flutter icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/git-original-wordmark.svg',
      semanticsLabel: 'git icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/graphql-plain-wordmark.svg',
      semanticsLabel: 'graphql icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/handlebars-original-wordmark.svg',
      semanticsLabel: 'handlebars icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/heroku-original-wordmark.svg',
      semanticsLabel: 'heroku icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/html5-original-wordmark.svg',
      semanticsLabel: 'html5 icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/javascript-original.svg',
      semanticsLabel: 'javascript icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/jquery-original-wordmark.svg',
      semanticsLabel: 'jquery icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/materialui-original.svg',
      semanticsLabel: 'materialui icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/mongodb-original-wordmark.svg',
      semanticsLabel: 'mongodb icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/mysql-original-wordmark.svg',
      semanticsLabel: 'mysql icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/nodejs-plain-wordmark.svg',
      semanticsLabel: 'nodejs icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/npm-original-wordmark.svg',
      semanticsLabel: 'npm icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/photoshop-line.svg',
      semanticsLabel: 'photoshop icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/postgresql-original-wordmark.svg',
      semanticsLabel: 'postgresql icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/react-original-wordmark.svg',
      semanticsLabel: 'react icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/sequelize-original-wordmark.svg',
      semanticsLabel: 'sequelize icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/sqlite-original-wordmark.svg',
      semanticsLabel: 'sqlite icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/swift-original-wordmark.svg',
      semanticsLabel: 'swaift icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/typescript-original.svg',
      semanticsLabel: 'typescript icon',
      height: 50,
      width: 50,
    ),
    SvgPicture.asset(
      'lib/assets/xcode-original.svg',
      semanticsLabel: 'xcode icon',
      height: 50,
      width: 50,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.height,
        width: widget.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[0],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[1],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[2],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[3],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[4],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[5],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[6],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[7],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[8],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[9],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[20],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[21],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[22],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[23],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[24],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[25],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[26],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[27],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[28],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/assets/jwt.png"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[10],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[11],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[12],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[13],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[14],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[15],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[16],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[17],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[18],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: svg[19],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
