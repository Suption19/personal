import 'package:flutter/material.dart';
import 'package:personal/widgets/centeredView/centeredView.dart';
import 'package:personal/widgets/navigationBar/nagivationBar.dart';
import 'package:http/http.dart' as http;

class AdminView extends StatelessWidget {
  final usernameField = new CustomTextField("Enter Username");
  final passwordField = new CustomTextField("Enter Password");
  void tryToLogin() async {
    var url = new Uri.http("localhost:4040", "/application/json");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.statusCode);
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      CenteredView(
        child: Column(children: <Widget>[NavigationBar()]),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          usernameField,
          SizedBox(height: 20),
          passwordField,
          SizedBox(height: 50),
          ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                tryToLogin();
              })
        ],
      ),
    ]));
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController editingController = TextEditingController();

  CustomTextField(this.labelText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextFormField(
          controller: editingController,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.input),
              labelText: labelText,
              border: OutlineInputBorder())),
    );
  }
}

class CustomInputField extends StatefulWidget {
  final String labelText;
  final TextEditingController editingController = TextEditingController();
  CustomInputField(this.labelText);
  @override
  _CustoInputmFieldState createState() => _CustoInputmFieldState(labelText);
}

class _CustoInputmFieldState extends State<CustomInputField> {
  final bool hide = true;
  String labelText;
  TextEditingController editingController = TextEditingController();
  _CustoInputmFieldState(this.labelText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextFormField(
        obscureText: hide,
        controller: editingController,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.input), //lock for password
            labelText: labelText,
            border: OutlineInputBorder()),
      ),
    );
  }
}
