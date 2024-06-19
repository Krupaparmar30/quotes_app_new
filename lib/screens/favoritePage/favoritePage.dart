import 'package:flutter/material.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';
import 'package:quotes_app_new/utils/icons.dart';

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
        ...List.generate(fav.length, (index) =>
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                  image: AssetImage(
                    fav[index]['img'],
                  )
                )
               ),
            )
          ],
        ))
      ],),
    );
  }
}
