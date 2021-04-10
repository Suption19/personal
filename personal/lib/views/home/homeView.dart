import 'package:flutter/material.dart';
import '../../widgets/navigationBar/nagivationBar.dart';
import '../../widgets/centeredView/centeredView.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CenteredView(
      child: Column(
        children: <Widget>[NavigationBar()],
      ),
    ));
  }
}
