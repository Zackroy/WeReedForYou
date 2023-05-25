import 'package:flutter/material.dart';
import 'package:videocall/call.dart';
import 'controller/authcontroller.dart';
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text("WeReedForYou"),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyCall(callID: "1")),
                    );
                  },
                  child: Icon(Icons.video_call, size: 30,),
                  backgroundColor: Colors.blue,
                  elevation: 50.0,
                  highlightElevation: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: FloatingActionButton(onPressed: (){AuthController().signOut();},
                    child: Icon(Icons.phone_in_talk, size: 30,),
                  ),
                ),
              )

            ],
          ),

        ),



      ),

    );
  }
}
