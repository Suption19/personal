import 'package:flutter/material.dart';
import 'package:personal/widgets/centeredView/centeredView.dart';
import 'package:personal/widgets/navigationBar/nagivationBar.dart';
import 'package:url_launcher/url_launcher.dart';

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
              CustomButton("Twitter", "twitter.png", "https://twitter.com"),
              CustomButton(
                  "Instagram", "instagram.png", "https://www.instagram.com"),
              CustomButton(
                  "Github", "github.png", "https://github.com/Suption19")
            ]),
        new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton("Spotify", "spotify.png",
                "https://open.spotify.com/user/5yrcnlp3fzoc8jiw46gxvdiqd?si=EJ4ak9QaSZGrjb2bJs1o3Q"),
            CustomButton(
                "Discord", "discord.png", "https://discord.gg/tkTW5AC9pH"),
            CustomButton(
                "LinkedIn soon", "linkedin.png", "https://de.linkedin.com/")
          ],
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final String imageName;
  final String destinationWebsiteUrl;
  CustomButton(this.text, this.imageName, this.destinationWebsiteUrl);

  _launchURL() async {
    if (await canLaunch(destinationWebsiteUrl)) {
      await launch(destinationWebsiteUrl, forceSafariVC: true);
    } else {
      throw 'Could not launch $destinationWebsiteUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 70.0,
        child: ElevatedButton(
          onPressed: () => _launchURL(),
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
