import 'package:flutter/material.dart';

class TutorialModel {
  final String assetImagePath;
  final String titleText;
  final String subtitleText;
  final Color dividerColor;
  final Color textColor;
  TutorialModel(
      {this.assetImagePath,
      this.titleText,
      this.subtitleText,
      this.dividerColor,
      this.textColor});
}

List<TutorialModel> pages = [
  TutorialModel(
      assetImagePath: 'assets/logo.png',
      titleText: 'Welcome to \nthe MyTree \nplatform ',
      subtitleText:
          'connecting people and businesses \nto reduce their carbon footprint \nand make the world a little greener.',
      dividerColor: Colors.teal[900],
      textColor: Colors.white),
  TutorialModel(
      assetImagePath: 'assets/logo.png',
      titleText: 'Want to buy \ntrees and get \ncarbon neutral ',
      subtitleText:
          'quisque mollis, sem interdum ultries \nrutrum, turpis magna luctus mi, non \nvolutpat lorem metus sit amet',
      dividerColor: Colors.white,
      textColor: Colors.teal[900]),
  TutorialModel(
      assetImagePath: 'assets/logo.png',
      titleText: 'Want to take up a strength or weight lifting program ',
      subtitleText: 'Track your progress and get stronger',
      dividerColor: Colors.white,
      textColor: Colors.teal[900]),
];
