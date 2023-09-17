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

    Future<void> deleteComment(id) {
      return comments
          .doc(id)
          .delete()
          .then((value) => print("Comment Deleted"))
          .catchError((error) => print("Failed to delete user: $error"));
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: nameTextController,
                  focusNode: focusName,
                  decoration: const InputDecoration(
                      labelText: 'Name',
                      fillColor: Colors.white,
                      icon: Icon(Icons.person)),
                ),
                TextFormField(
                  controller: commentTextController,
                  focusNode: focusComment,
                  minLines: 1,
                  maxLines: 5,
                  decoration: const InputDecoration(
                      labelText: 'Comment',
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
              ],
            ),
          ),
        ),
        StreamBuilder<QuerySnapshot>(
          stream: commentsStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return ListView(
              reverse: true,
              shrinkWrap: true,
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text(data['name'] +
                          " - ${(data['date'] as Timestamp).toDate()}"),
                      subtitle: Text(data['comment']),
                      trailing: IconButton(
                          onPressed: () {
                            deleteComment(document.id);
                          },
                          icon: Icon(Icons.delete)),
                    ),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }
}
