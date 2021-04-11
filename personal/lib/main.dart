import 'package:flutter/material.dart';
import 'package:personal/utils/websiteRoutes.dart';
import 'package:personal/views/admin/adminView.dart';
import 'package:personal/views/home/homeView.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:personal/views/socialMedia/socialMediaView.dart';
import 'views/CurriculumVitae/curriculumVitaeView.dart';
import 'views/aboutMe/aboutMeView.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String homepageTitle = 'Maik Bernert';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: homepageTitle,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      initialRoute: WebsiteRoutes.HomePage,
      routes: {
        WebsiteRoutes.HomePage: (context) => HomeView(),
        WebsiteRoutes.SocialMedia: (context) => SocialMediaView(),
        WebsiteRoutes.AboutMe: (context) => AboutMeView(),
        WebsiteRoutes.CurriculumVitae: (context) => CurriculumVitaeView(),
        WebsiteRoutes.Admin: (context) => AdminView(),
      },
    );
  }
}
