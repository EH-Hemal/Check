import 'package:check/auth/auth.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  late String name;
  late String email;
  late String password;
  Authservice authservice = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("SignIn"),
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
          ElevatedButton(onPressed: () {
            
          }, child: Text("SignIn")),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have Account ?"),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () async {
                    authservice.login(email, password);
                    
                  },
                  child: Text(
                    'SignUp',
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
