import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/authcontroller.dart';
import 'components/underpart.dart';
import 'signup.dart';


class MyLogin extends StatelessWidget {
  MyLogin({Key? key}) : super(key: key);
  static String name = "";
  static String userId = "";
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Login"),
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
              controller: _passwordController,
              cursorColor: Colors.white,
              obscureText: true,
              style: TextStyle(color: Colors.white),

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
                AuthController().login(_emailController.text,_passwordController.text);

              },
              child: Text("Submit"),
            ),
            SizedBox(
              height: 10,
            ),
            UnderPart(
              title: "Don't have an account?",
              navigatorText: "Sign Up",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySignUp())
                );
              },
            ),




          ],


        ),



      ),




    );
  }
}
