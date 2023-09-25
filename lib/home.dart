import 'package:flutter/material.dart';
import 'package:full_potatop/about.dart';
import 'package:full_potatop/experience.dart';
import 'package:full_potatop/firestore_comments.dart';
import 'package:full_potatop/header.dart';
import 'package:full_potatop/navigation.dart';
import 'package:full_potatop/projects.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hero = true;
  int _selectedIndex = 1;

  void _onSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _onSelect(_selectedIndex);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double height = media.height;
    double width = media.width;
    List<Widget> _pages = <Widget>[
      ProjectsComponent(),
      AboutComponent(),
      ExperienceComponent()
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          _hero == true
              ? InkWell(
                  onTap: () {
                    setState(() {
                      _hero = !_hero;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // image: DecorationImage(
                      //     image: AssetImage("lib/assets/code.png"),
                      //     fit:
                      //         width < 500 ? BoxFit.fitHeight : BoxFit.fitWidth),
                    ),
                    child: HeaderComponent(
                      hero: _hero,
                    ),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //horizontal layout
                    Row(
                      children: [
                        HeaderComponent(
                          hero: _hero,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: width < 500
                                  ? Column(
                                      children: [
                                        Text('PETER JOHN BISHOP'),
                                        Text('full stack developer')
                                      ],
                                    )
                                  : Text(
                                      "PETER JOHN BISHOP / FULL STACK DEVELOPER",
                                      style: TextStyle(color: Colors.black),
                                    ),
                            ),
                            NavComponent(
                              onSelect: _onSelect,
                            ),
                          ],
                        ),
                      ],
                    ),
                    _pages.elementAt(_selectedIndex),
                  ],
                )
        ],
      ),
    );
  }
}
