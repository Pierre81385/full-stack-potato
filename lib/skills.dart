import 'package:flutter/material.dart';

class SkillStack extends StatefulWidget {
  const SkillStack({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  State<SkillStack> createState() => _SkillStackState();
}

class _SkillStackState extends State<SkillStack> {
  List<Widget> stackWidgets = [];

  void moveCardToBottom(int index) {
    if (index >= 0 && index < stackWidgets.length) {
      final selectedCard = stackWidgets.removeAt(index);

      setState(() {
        stackWidgets.insert(0, selectedCard);
      }); // Update the UI
    }
  }

  void setCards(double width, double height) {
    setState(() {
      stackWidgets = [
        Positioned(
          top: 20,
          child: Padding(
            padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
            child: Card(
              elevation: 10,
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(width: height * .3, height: height * .4),
            ),
          ),
        ),
        Positioned(
          top: 30,
          child: Padding(
            padding: EdgeInsets.fromLTRB(100, 200, 0, 0),
            child: Card(
              elevation: 10,
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(width: height * .3, height: height * .4),
            ),
          ),
        ),
        Positioned(
          top: 40,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 100, 250),
            child: Card(
              elevation: 10,
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(width: height * .3, height: height * .4),
            ),
          ),
        ),
        Positioned(
          top: 50,
          child: Padding(
            padding: EdgeInsets.fromLTRB(300, 100, 0, 0),
            child: Card(
              elevation: 10,
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(width: height * .3, height: height * .4),
            ),
          ),
        ),
        Positioned(
          top: 60,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 200, 150),
            child: Card(
              elevation: 10,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(width: height * .3, height: height * .4),
            ),
          ),
        ),
      ];
    });
  }

  @override
  void initState() {
    setCards(widget.width, widget.height);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: GestureDetector(
        onTap: () {
          final selectedCard = stackWidgets.removeAt(stackWidgets.length - 1);
          setState(() {
            stackWidgets.insert(0, selectedCard);
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: stackWidgets,
        ),
      ),
    );
  }
}
