import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ClickableText('Maik Bernert'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _ClickableText('Social Media'),
              SizedBox(
                width: 60,
              ),
              _ClickableText('About Me'),
              SizedBox(
                width: 60,
              ),
              _ClickableText('Curriculum Vitae')
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 24),
    );
  }
}

//Should be a StatefulWidget because then the color of the text can be changed
//when hovering over it
class _ClickableText extends StatelessWidget {
  final String title;
  const _ClickableText(this.title);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: _NavBarItem(title));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
