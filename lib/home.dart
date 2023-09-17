import 'package:flutter/material.dart';
import 'package:full_potatop/firestore_comments.dart';
import 'package:full_potatop/header.dart';
import 'package:full_potatop/navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double height;
  late double width;
  bool _hero = true;
  int _selectedIndex = 1;

  void _onSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    height = widget.height;
    width = widget.width;
    _onSelect(_selectedIndex);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = <Widget>[];
    return SizedBox(
      height: height,
      width: width,
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
                      image: DecorationImage(
                          image: AssetImage("lib/assets/code.png"),
                          fit:
                              width < 500 ? BoxFit.fitHeight : BoxFit.fitWidth),
                    ),
                    child: HeaderComponent(
                      width: width,
                      height: height,
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
                          width: width,
                          height: height,
                          hero: _hero,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "PETER JOHN BISHOP",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            NavComponent(
                              width: width,
                              height: height,
                              onSelect: _onSelect,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(_selectedIndex.toString()),
                    Comments(),
                  ],
                )
        ],
      ),
    );
  }
}
