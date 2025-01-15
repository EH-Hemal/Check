import 'package:check/auth/auth.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  late String name;
  late String email;
  late String password;
  Authservice authservice = Authservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("SignUp"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
                onChanged: (value) {
                  name = value;
                },
                decoration: InputDecoration(
                    labelText: "NAME",
                    hintText: 'Your name here',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 20)))),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    labelText: 'EMAIL',
                    hintText: 'example@gmail.com',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 200),
                    ))),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    hintText: ' ',
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blue, width: 200)))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                authservice.signup(name, email, password);
              },
              child: Text("SignUp")),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have Account ?"),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
