import 'package:flutter/material.dart';
import 'package:videocall/login.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'controller/authcontroller.dart';
import 'components/underpart.dart';

class MySignUp extends StatelessWidget {
  MySignUp({Key? key}) : super(key: key);
  String name = "";
  String userId = "";
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _setpasswordController =
  new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("SignUp"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              controller: _emailController,

              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Theme.of(context).primaryColor,
                hintText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              // required: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _nameController,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),

              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Theme.of(context).primaryColor,
                hintText: "Name",
                border: OutlineInputBorder(),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              // required: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _setpasswordController,
              cursorColor: Colors.white,
              obscureText: true,
              style: TextStyle(color: Colors.white),
              // onChanged: (_emailcontroller) {
              //   name = _setpasswordController.text;
              // },
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Theme.of(context).primaryColor,
                hintText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              // required: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print("print");
                AuthController().SignUp(_emailController.text, _nameController.text, _setpasswordController.text);

              },
              child: Text("Submit"),
            ),
            SizedBox(
              height: 10,
            ),
            UnderPart(
              title: "Have an account?",
              navigatorText: "Login In",
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => MyLogin())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
