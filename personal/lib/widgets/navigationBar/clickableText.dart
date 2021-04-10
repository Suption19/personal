import 'package:flutter/material.dart';

//Should be a StatefulWidget because then the color of the text can be changed
//when hovering over it
class ClickableText extends StatelessWidget {
  final String title;
  final String route;
  const ClickableText(this.title, this.route);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {
          String currentRoute = ModalRoute.of(context).settings.name;
          if (currentRoute == route) return;
          Navigator.pushNamed(context, route);
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 24),
        ));
  }
}
