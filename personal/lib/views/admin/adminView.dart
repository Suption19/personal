import 'package:flutter/material.dart';
import 'package:personal/widgets/centeredView/centeredView.dart';
import 'package:personal/widgets/navigationBar/nagivationBar.dart';

class AdminView extends StatelessWidget {
  void tryToLogin() {}

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
          CustomInputField("Enter Username"),
          SizedBox(height: 20),
          CustomInputField("Enter Password"),
          SizedBox(height: 50),
          ElevatedButton(child: Text("Login"), onPressed: tryToLogin)
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
  String labelText;
  TextEditingController editingController = TextEditingController();
  _CustoInputmFieldState(this.labelText);
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
