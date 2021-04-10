import 'package:flutter/material.dart';
import '../../utils/websiteRoutes.dart';
import '../../widgets/navigationBar/clickableText.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ClickableText('Maik Bernert', WebsiteRoutes.HomePage),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClickableText('Social Media', WebsiteRoutes.SocialMedia),
              SizedBox(
                width: 60,
              ),
              ClickableText('About Me', WebsiteRoutes.AboutMe),
              SizedBox(
                width: 60,
              ),
              ClickableText('Curriculum Vitae', WebsiteRoutes.CurriculumVitae)
            ],
          )
        ],
      ),
    );
  }
}
