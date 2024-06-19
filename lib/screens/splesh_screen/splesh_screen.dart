import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class spleshPage extends StatefulWidget {
  const spleshPage({super.key});

  @override
  State<spleshPage> createState() => _spleshPageState();
}

class _spleshPageState extends State<spleshPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    Timer(Duration(seconds: 3), () {

      Navigator.of(context).pushReplacementNamed('/tab');

    });

    return Scaffold(
      body: Column(
        children: [
          Stack(
           children: [
             Container(
               height: height*1,
               width: width*1,
               decoration: BoxDecoration(
                   color: Colors.blue.shade900,
                   image: DecorationImage(
                       fit: BoxFit.cover,
                       image: AssetImage(
                           'assets/images/sky.jpg'
                       )
                   )
               ),
               child: Column(
                 children: [
                   SizedBox(
                     height: height*0.4,
                   ),
                   // Center(
                   //   child: Container(
                   //     height: height*0.0999,
                   //     width: width*0.099,
                   //     decoration: BoxDecoration(
                   //         color: Colors.blue.shade900,
                   //       image: DecorationImage(
                   //         image: AssetImage(
                   //           'assets/images/simbol.webp'
                   //         )
                   //       )
                   //     ),
                   //   ),
                   // )
                   Text('Inspirational',style: TextStyle(color: Colors.white,
                   fontSize: 32,fontWeight: FontWeight.w800),),
                   Text('Quotes',style: TextStyle(color: Colors.white,
                       fontSize: 32,fontWeight: FontWeight.w800),)
                 ],
               ),
             ),
           ],
          )
        ],
      ),
    );
  }
}
