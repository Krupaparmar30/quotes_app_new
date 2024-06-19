import 'package:flutter/material.dart';
import 'package:quotes_app_new/screens/favoritePage/favoritePage.dart';
import 'package:quotes_app_new/screens/home_screen/home_screen.dart';
import 'package:quotes_app_new/screens/new/new.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';

class tabbarPage extends StatefulWidget {
  const tabbarPage({super.key});

  @override
  State<tabbarPage> createState() => _tabbarPageState();
}

class _tabbarPageState extends State<tabbarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          isScrollable: true,
          tabs: [
            Tab(
              child: Row(
                children: [
                  Icon(Icons.file_copy_sharp,color: Colors.black,),
                  Text('My Collation ',style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Icon(Icons.my_library_add,color: Colors.black,),
                  Text('Categori ',style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Icon(Icons.favorite,color: Colors.black,),
                  Text('favorite ',style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Icon(Icons.thermostat_auto,color: Colors.black,),
                  Text('Themes ',style: TextStyle(
                      color: Colors.black
                  ),),
                ],
              ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            homePage(),
            themePage(),
            favoritePage(),
          newPage()
            ],
        ),
      ),
    );
  }
}
