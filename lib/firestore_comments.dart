import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    final nameTextController = TextEditingController();
    final focusName = FocusNode();
    final commentTextController = TextEditingController();
    final focusComment = FocusNode();
    CollectionReference comments =
        FirebaseFirestore.instance.collection('comments');
    final Stream<QuerySnapshot> commentsStream =
        FirebaseFirestore.instance.collection('comments').snapshots();

    Future<void> addComment() {
      return comments
          .add({
            'name': nameTextController.text,
            'comment': commentTextController.text,
            'date': DateTime.timestamp()
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return Column(
      children: [
        Text("Leave a comment"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: nameTextController,
                  focusNode: focusName,
                  decoration: const InputDecoration(
                      labelText: 'Please enter your name here.',
                      fillColor: Colors.white,
                      icon: Icon(Icons.person)),
                ),
                TextFormField(
                  controller: commentTextController,
                  focusNode: focusComment,
                  minLines: 1,
                  maxLines: 5,
                  decoration: const InputDecoration(
                      labelText: 'Comment...',
                      fillColor: Colors.white,
                      icon: Icon(Icons.edit)),
                ),
                TextButton(
                  onPressed: () {
                    addComment();
                    setState(() {
                      nameTextController.text = "";
                      commentTextController.text = "";
                      focusName.unfocus();
                      focusComment.unfocus();
                    });
                  },
                  child: Text(
                    "Add Comment",
                  ),
                ),
                StreamBuilder<QuerySnapshot>(
                  stream: commentsStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("Loading");
                    }

                    return ListView(
                      shrinkWrap: true,
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data()! as Map<String, dynamic>;
                        return ListTile(
                          title: Text(data['name']),
                          subtitle: Text(data['comment']),
                        );
                      }).toList(),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
