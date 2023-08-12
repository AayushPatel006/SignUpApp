import 'package:flutter/material.dart';
import 'package:mysignupapp/HomePage.dart';
import 'HomePage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidator = false;
  String name = "", email = "", mobile = "", collegename = "", password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Image(
                  image: AssetImage('images/mascot.png'),
                  width: 100.0,
                  height: 100.0,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (String? value) {
                      return value!.isEmpty ? "Enter value" : "";
                    },
                    decoration: InputDecoration(labelText: 'Name'),
                    onSaved: (newValue) {
                      if (newValue != null) {
                        name = newValue;
                      }
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (String? value) {
                      return value!.isEmpty ? "Enter value" : "";
                    },
                    decoration: InputDecoration(labelText: 'Email'),
                    onSaved: (newValue) {
                      if (newValue != null) {
                        email = newValue;
                      }
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (String? value) {
                      return value!.isEmpty ? "Enter value" : "";
                    },
                    decoration: InputDecoration(labelText: 'mobile'),
                    onSaved: (newValue) {
                      if (newValue != null) {
                        mobile = newValue;
                      }
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator: (String? value) {
                      return value!.isEmpty ? "Enter value" : "";
                    },
                    decoration: InputDecoration(labelText: 'College Name'),
                    onSaved: (newValue) {
                      if (newValue != null) {
                        collegename = newValue;
                      }
                    },
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: TextFormField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    validator: (String? value) {
                      return value!.isEmpty ? "Enter value" : "";
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    onSaved: (newValue) {
                      if (newValue != null) {
                        password = newValue;
                      }
                    },
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                ButtonTheme(
                    height: 50.0,
                    minWidth: 1000.0,
                    child: ElevatedButton(
                      onPressed: () => _sendToNextScreen(),
                      child: Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )),
                Padding(padding: EdgeInsets.all(10.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _sendToNextScreen() {
    //if (_key.currentState!.validate()) {
    //saves to global key
    print("hello");
    _key.currentState!.save();
    // send to next screen
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                name: name,
                mobile: mobile,
                email: email,
                collegename: collegename,
                password: password)));
    // } else {
    //   setState(() {
    //     _autovalidator = true;
    //   });
    // }
  }
}
