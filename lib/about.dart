import 'package:flutter/material.dart';

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
    return width < 500
        ? Text("Mobile About")
        : Column(
            children: [
              Text("hi I'm,"),
              Text("Peter!"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Combining a passion for continuous learning with a keen interest in application development and UX design, I am eager to contribute to a dynamic team and cultivate my expertise. Seeking a growth-oriented position to further expand my knowledge and skills in a stimulating professional environment."),
              )
            ],
          );
  }
}
