import 'package:flutter/material.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';
import 'package:quotes_app_new/utils/icons.dart';
import 'package:quotes_app_new/utils/themeNew/themwNew.dart';

class favoritePage extends StatefulWidget {
  const favoritePage({super.key});

  @override
  State<favoritePage> createState() => _favoritePageState();
}

class _favoritePageState extends State<favoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
      ...List.generate(like.length, (index) => Text('$like[index'))
      ],),
    );
  }
}
