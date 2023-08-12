import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String? name, email, mobile, collegename, password;

  HomePage(
      {Key? key,
      @required this.name,
      this.email,
      this.mobile,
      this.collegename,
      this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Student info"),
      ),
      body: Form(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(50)),
              Image(
                  image: AssetImage('images/mascot.png'),
                  width: 100.0,
                  height: 100),
              ListTile(
                leading: Icon(Icons.people),
                title: Text(name!),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(email!),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(mobile!),
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text(collegename!),
              ),
              ListTile(
                leading: Icon(Icons.lock_open),
                title: Text(password!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
