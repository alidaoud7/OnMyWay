import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ required this.uid });

  // collection reference
  final CollectionReference appCollection = FirebaseFirestore.instance.collection('users');

  Future updateUserData(String firstname,String secondname) async {
    return await appCollection.doc(uid).set({
      'firstname' : firstname,
      'secondname' : secondname,
    });
  }


  // get app stream
Stream<QuerySnapshot> get app {
    return appCollection.snapshots();

}

}