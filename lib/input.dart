import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({super.key});

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  final List<String> char = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    ' ',
    '.',
    '?',
    '!'
  ];

  final ScrollController _controller = ScrollController();
  final complaintTextController = TextEditingController();
  final focusComplaint = FocusNode();
  CollectionReference complaints =
      FirebaseFirestore.instance.collection('complaints');
  final Stream<QuerySnapshot> complaintsStream =
      FirebaseFirestore.instance.collection('complaints').snapshots();

  int selectedCardIndex = 0;
  late String word = "";

  Future<void> addComplaint() {
    return complaints
        .add({
          'complaint': complaintTextController.text,
          'date': DateTime.timestamp()
        })
        .then((value) => print("Complaint Added"))
        .catchError((error) => print("Failed to add complaint: $error"));
  }

  Future<void> deleteComplaint(id) {
    return complaints
        .doc(id)
        .delete()
        .then((value) => print("Complaints Deleted"))
        .catchError((error) => print("Failed to delete complaint: $error"));
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () {
        // Calculate the index of the selected card based on the scroll position
        final cardWidth = 60.0; // Adjust this based on your card size
        final offset = _controller.offset;
        final newIndex = (offset / cardWidth).round();
        if (newIndex != selectedCardIndex) {
          setState(
            () {
              selectedCardIndex = newIndex;
            },
          );
        }
        ;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    double height = media.height;
    double width = media.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: width * .5,
            child: Form(
              child: TextFormField(
                readOnly: true,
                controller: complaintTextController,
                focusNode: focusComplaint,
                decoration: const InputDecoration(
                    labelText:
                        'To report a problem please leave a comment here!',
                    fillColor: Colors.white,
                    icon: Icon(Icons.note_alt_outlined)),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      word = "";
                      complaintTextController.text = "";
                    });
                  },
                  child: Text("Reset")),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: GridView.count(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 1,
                      children: List.generate(
                        40,
                        (index) {
                          return SizedBox(
                            //height: 25,
                            child: InkWell(
                              hoverColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  word = join(word, char[index])
                                      .replaceAll('/', "");
                                  complaintTextController.text = word;
                                });
                              },
                              child: Card(
                                elevation: selectedCardIndex == index ? 5 : 0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.center,
                                      char[index],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    addComplaint();
                    setState(() {
                      word = "";
                      complaintTextController.text = "";
                    });
                  },
                  child: Text("Submit")),
            ),
          ],
        ),
        StreamBuilder<QuerySnapshot>(
          stream: complaintsStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return SizedBox(
              width: width * .5,
              child: ListView(
                shrinkWrap: true,
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title:
                            Text(" - ${(data['date'] as Timestamp).toDate()}"),
                        subtitle: Text(data['complaint']),
                        trailing: IconButton(
                            onPressed: () {
                              deleteComplaint(document.id);
                            },
                            icon: Icon(Icons.delete)),
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
