import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotes_app_new/screens/home_screen/home_screen.dart';
import 'package:quotes_app_new/utils/quotesModel/quotesModel.dart';
import 'package:quotes_app_new/utils/themeList/themeList.dart';

class themePage extends StatefulWidget {
  const themePage({super.key});

  @override
  State<themePage> createState() => _themePageState();
}

class _themePageState extends State<themePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: height * 0.3,
                width: width * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/m.jpg"))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text(
                  'Motivation',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onDoubleTap: () {},
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ...List.generate(
                                4,
                                (index) => Padding(
                                    padding: EdgeInsets.all(5),
                                    child: GestureDetector(
                                        onDoubleTap: () {
                                          setState(() {
                                            selIndex = index;
                                            String S =
                                                Save2[selIndex][index]['img'];
                                            String P =
                                                Save2[selIndex][index]['quote'];
                                            String K = Save2[selIndex][index]
                                                ['author'];
                                            // Navigator.of(context).pushNamed('/s');
                                          });
                                          Navigator.of(context)
                                              .pushNamed('/th');
                                        },
                                        child: Column(
                                          children: [
                                            // box2(themeList[index]['img'],textList[index]['text'].toString(),
                                            Container(
                                              height: 150,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          themeList[index]
                                                              ['img']))),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 110,
                                                            right: 50),
                                                    child: Text(
                                                      textList[index]['text'],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 22),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  'Love',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onDoubleTap: () {},
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ...List.generate(
                                4,
                                (index) => Padding(
                                    padding: EdgeInsets.all(5),
                                    child: GestureDetector(
                                        onDoubleTap: () {
                                          setState(() {
                                            selIndex = index;
                                            String A =
                                                Save3[selIndex][index]['img'];
                                            String B =
                                                Save3[selIndex][index]['quote'];
                                            String C = Save3[selIndex][index]
                                                ['author'];
                                            //   Navigator.of(context).pushNamed('/s');
                                          });
                                          Navigator.of(context)
                                              .pushNamed('/th2');
                                        },
                                        child: Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.pink,
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      themeList2[index]
                                                          ['img']))),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 110, right: 70),
                                                child: Text(
                                                  textList2[index]['text'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 22),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                        // box2(themeList2[index]['img'],textList2[index]['text'].toString())
                                        )))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Hard Times',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onDoubleTap: () {},
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ...List.generate(
                                4,
                                (index) => Padding(
                                    padding: EdgeInsets.all(5),
                                    child: GestureDetector(
                                        onDoubleTap: () {
                                          setState(() {
                                            selIndex = index;
                                            String D =
                                                Save4[selIndex][index]['img'];
                                            String E =
                                                Save4[selIndex][index]['quote'];
                                            String F = Save4[selIndex][index]
                                                ['author'];
                                            //Navigator.of(context).pushNamed('/s');
                                          });
                                          Navigator.of(context)
                                              .pushNamed('/th3');
                                        },
                                        child: Container(
                                          height: 150,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.pink,
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      themeList3[index]
                                                          ['img']))),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 110, right: 70),
                                                child: Text(
                                                  textList3[index]['text'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              )
                                            ],
                                          ),
                                        ))))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

int index = 0;
int selIndex = 0;
int selImages = 0;
List<GlobalKey> catImage = List.generate(Save2.length, (index) => GlobalKey());
