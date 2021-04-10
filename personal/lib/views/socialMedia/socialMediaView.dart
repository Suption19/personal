import 'package:flutter/material.dart';
import 'package:personal/widgets/centeredView/centeredView.dart';
import 'package:personal/widgets/navigationBar/nagivationBar.dart';

class SocialMediaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      CenteredView(
        child: Column(children: <Widget>[NavigationBar()]),
      ),
      Expanded(
        child: Row(
          children: <Widget>[
            Expanded(child: ButtonSelection()),
          ],
        ),
      )
    ]));
  }
}

class ButtonSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton("Twitter", "twitter.png"),
              CustomButton("Instagram", "instagram.png"),
              CustomButton("Github", "github.png")
            ]),
        new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton("Spotify", "spotify.png"),
            CustomButton("Discord", "discord.png"),
            CustomButton("LinkedIn soon", "linkedin.png")
          ],
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final String imageName;
  CustomButton(this.text, this.imageName);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 70.0,
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(text),
              Image.asset(
                imageName,
                width: 64,
                height: 64,
              )
            ],
          ),
          style: ButtonStyle(
              enableFeedback: false,
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff123456))),
        ));
  }
}
