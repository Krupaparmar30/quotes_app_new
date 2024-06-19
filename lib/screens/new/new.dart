import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app_new/utils/themeNew/themwNew.dart';

class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('themes'),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
            ...List.generate(newList.length, (index) => InkWell(child: box2(img:newList[index]),
              onDoubleTap: () {
                setState(() {
                  selectTheme=newList[index];
                });
              },


            ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
Container box2({required String img})
{
  return  Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(color: Colors.pink,
      image: DecorationImage(
          image: AssetImage(img,),
          fit: BoxFit.cover
      ),

    ),
  );
}