import 'package:cloud_firestore/cloud_firestore.dart';

class myUser{
  String email;
  String name;
  String uid;

  myUser(
      {
        required this.email,
        required this.name,
        required this.uid
      }
      );

  //App - Firebase(Map)
  Map<String , dynamic> toJson() => {
    "name" : name,
    "email" : email,
    "uid" : uid
  };


  //Firebase(Map) - App(User)
  static myUser fromSnap( DocumentSnapshot snap){

    var snapshot = snap.data() as Map<String , dynamic>;
    return myUser(
      email: snapshot['email'],
      name: snapshot["name"],
      uid: snapshot["uid"],
    );

  }

}