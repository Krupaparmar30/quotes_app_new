import 'package:flutter/material.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';
import 'package:quotes_app_new/screens/thoughtPage/thoughtPage.dart';
import 'package:quotes_app_new/utils/quotesModel/quotesModel.dart';
import 'package:quotes_app_new/utils/themeList/themeList.dart';
QuoteModel? quoteModel;
class imgPage extends StatefulWidget {
  const imgPage({super.key});

  @override
  State<imgPage> createState() => _imgPageState();
}

class _imgPageState extends State<imgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: GridView.builder(
          itemCount: images.length,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2, childAspectRatio: 9 / 8),
      itemBuilder: (context, index) => GestureDetector(
        onDoubleTap: () {
          setState(() {
            selectImg=false;
            inx=index;
            Navigator.of(context).pop();
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('${images[index]['img']}'))),
          ),
        )
      ),
    ));
  }

  void im() {
    setState(() {
      selectImg;
    });
  }
}
