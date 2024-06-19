import 'package:flutter/material.dart';
import 'package:quotes_app_new/utils/routes/routes.dart';
void main()
{
  runApp(quotesnApp());
}
class quotesnApp extends StatelessWidget {
  const quotesnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
