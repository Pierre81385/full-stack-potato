import 'package:flutter/material.dart';

class NavComponent extends StatefulWidget {
  const NavComponent({super.key, required this.onSelect});

  final void Function(int) onSelect;

  @override
  State<NavComponent> createState() => _NavComponentState();
}

class _NavComponentState extends State<NavComponent> {
  late void Function(int) _onSelect;
  int _activeNav = 1; //New

  @override
  void initState() {
    _onSelect = widget.onSelect;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double height = media.height;
    double width = media.width;
    return Column(
      children: [
        Row(
          children: [
            TextButton(
                onPressed: () {
                  _onSelect(0);
                  setState(() {
                    _activeNav = 0;
                  });
                },
                child: Text(
                  _activeNav == 0
                      ? "projects".toUpperCase()
                      : "projects".toLowerCase(),
                  style: TextStyle(
                      color: _activeNav == 0 ? Colors.black : Colors.grey,
                      fontWeight: _activeNav == 0
                          ? FontWeight.bold
                          : FontWeight.normal),
                )),
            TextButton(
                onPressed: () {
                  _onSelect(1);
                  setState(() {
                    _activeNav = 1;
                  });
                },
                child: Text(
                  _activeNav == 1
                      ? "about".toUpperCase()
                      : "about".toLowerCase(),
                  style: TextStyle(
                      color: _activeNav == 1 ? Colors.black : Colors.grey,
                      fontWeight: _activeNav == 1
                          ? FontWeight.bold
                          : FontWeight.normal),
                )),
            TextButton(
                onPressed: () {
                  _onSelect(2);
                  setState(() {
                    _activeNav = 2;
                  });
                },
                child: Text(
                  _activeNav == 2
                      ? "experience".toUpperCase()
                      : "experience".toLowerCase(),
                  style: TextStyle(
                      color: _activeNav == 2 ? Colors.black : Colors.grey,
                      fontWeight: _activeNav == 2
                          ? FontWeight.bold
                          : FontWeight.normal),
                )),
          ],
        ),
        //SocialComponent(width: width, height: height, device: device)
      ],
    );
  }
}
