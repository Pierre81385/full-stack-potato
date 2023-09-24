import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:full_potatop/key.dart';
import 'package:http/http.dart' as http;

class GitHubComponent extends StatefulWidget {
  const GitHubComponent({super.key});

  @override
  State<GitHubComponent> createState() => _GitHubComponentState();
}

class _GitHubComponentState extends State<GitHubComponent> {
  var token = GH_KEY;
  late Map<String, dynamic> user = {};
  late List<dynamic> repos = [];
  late List<dynamic> commits = [];
  late Map<String, dynamic> langs = {};
  late int numberOfCommits = 0;
  late Map<String, dynamic> langsUsed = {
    "JavaScript": 0,
    "HTML": 0,
    "CSS": 0,
    "Dart": 0,
    "C++": 0,
    "CMake": 0,
    "Ruby": 0,
    "C": 0,
    "Swift": 0,
    "Kotlin": 0,
    "Objective-C": 0,
    "Makefile": 0,
    "PureBasic": 0
  };
  late num total = 0;

  void getGH_user() async {
    //get the user object then get the repos

    final response = await http.get(
      Uri.parse('https://api.github.com/user'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer ${token}',
      },
    );
    if (response.statusCode == 200) {
      setState(() {
        user = json.decode(response.body); // Convert the response body to JSON
      });
      getGH_repos();
    } else {
      setState(() {
        user = {
          'error': 'Failed to fetch data. Status code: ${response.statusCode}'
        };
      });
    }
  }

  void getGH_repos() async {
    //get the repos object then get the commits

    final response = await http.get(
      Uri.parse(user['repos_url']),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer ${token}',
      },
    );
    if (response.statusCode == 200) {
      setState(() {
        repos = json.decode(response.body);
      });
      getGH_commits();
      getGH_languages();
    } else {
      setState(() {
        repos = [
          {'error': 'Failed to fetch data. Status code: ${response.statusCode}'}
        ];
      });
    }
  }

  void getGH_commits() async {
    for (var i = 0; i < repos.length; i++) {
      final response = await http.get(
        Uri.parse(repos[i]['commits_url'].toString().replaceAll(r'{/sha}', "")),
        // Send authorization headers to the backend.
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${token}',
        },
      );
      if (response.statusCode == 200) {
        setState(() {
          commits = json.decode(response.body);
          numberOfCommits += commits.length;
        });
      } else {
        setState(() {
          commits = [
            {
              'error':
                  'Failed to fetch data. Status code: ${response.statusCode}'
            }
          ];
        });
      }
    }
  }

  //"languages_url"
  void getGH_languages() async {
    for (var i = 0; i < repos.length; i++) {
      final response = await http.get(
        Uri.parse(repos[i]['languages_url'].toString()),
        // Send authorization headers to the backend.
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${token}',
        },
      );
      if (response.statusCode == 200) {
        langs = json.decode(response.body);
        langs.forEach((key, value) {
          if (langsUsed.containsKey(key)) {
            setState(() {
              langsUsed[key] += value;
              total += value;
            });
          }
          print(langsUsed.toString());
        });
      } else {
        setState(() {
          langs = {
            'error': 'Failed to fetch data. Status code: ${response.statusCode}'
          };
        });
      }
    }
  }

  @override
  void initState() {
    getGH_user();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double height = media.height;
    double width = media.width;
    List<MapEntry<String, dynamic>> keyValueList = langsUsed.entries.toList();
    keyValueList.sort((a, b) => b.value.compareTo(a.value));

    return width < 500
        ? ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 15,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Repositories Created',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          user.isNotEmpty
                              ? user['public_repos'].toString()
                              : 'No data available',
                          style: const TextStyle(fontSize: 26.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 15,
                  child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Top 3 Languages Used',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              final key = keyValueList[index].key;
                              final value = keyValueList[index].value;
                              return ListTile(
                                title: Center(child: Text(key)),
                                subtitle: Center(
                                    child: Text('${(value / total) * 100} %')),
                              );
                            },
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 15,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Commits Made',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          numberOfCommits > 0
                              ? numberOfCommits.toString()
                              : 'No data available',
                          style: const TextStyle(fontSize: 26.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : SizedBox(
            height: height * .33,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 15,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Repositories Created',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              user.isNotEmpty
                                  ? user['public_repos'].toString()
                                  : 'No data available',
                              style: const TextStyle(fontSize: 26.0),
                            ),
                          ],
                        ),
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
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Top 3 Languages Used',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  final key = keyValueList[index].key;
                                  final value = keyValueList[index].value;
                                  return ListTile(
                                    title: Center(child: Text(key)),
                                    subtitle: Center(
                                        child:
                                            Text('${(value / total) * 100} %')),
                                  );
                                },
                              ),
                            ]),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Commits Made',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              numberOfCommits > 0
                                  ? numberOfCommits.toString()
                                  : 'No data available',
                              style: const TextStyle(fontSize: 26.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
