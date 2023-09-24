import 'package:flutter/material.dart';
import 'package:full_potatop/gh.dart';

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
        ? SizedBox(
            height: height * .33,
            width: width,
            child: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 15,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Text("img1"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 15,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Text("img2"),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 15,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Text("img3"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Column(
            children: [
              GitHubComponent(),
            ],
          );
  }
}
