


import 'package:flutter/material.dart';
import 'package:quotes_app_new/screens/edit/edit.dart';
import 'package:quotes_app_new/screens/favoritePage/favoritePage.dart';
import 'package:quotes_app_new/screens/home_screen/home_screen.dart';
import 'package:quotes_app_new/screens/new/new.dart';
import 'package:quotes_app_new/screens/se/se.dart';
import 'package:quotes_app_new/screens/splesh_screen/splesh_screen.dart';
import 'package:quotes_app_new/screens/tabbar_page/tabbar_page.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';

class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes= {
    '/':(context)=>spleshPage(),
    '/home':(context)=>homePage(),
    '/tab':(context)=>tabbarPage(),
    '/theme':(context)=>themePage(),
    '/s':(context)=>se(),
    '/edit':(context)=>editPage(),
    '/fav':(context)=>favoritePage(),
    '/new':(context)=>newPage()



  };
  }