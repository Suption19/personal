import 'package:flutter/material.dart';
import 'package:personal/widgets/centeredView/centeredView.dart';
import 'package:personal/widgets/navigationBar/nagivationBar.dart';

class CurriculumVitaeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Column(
          children: <Widget>[NavigationBar()],
        ),
      ),
    );
  }
}
