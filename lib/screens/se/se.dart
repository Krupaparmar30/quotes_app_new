import 'package:flutter/material.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';
import 'package:quotes_app_new/utils/themeList/themeList.dart';

class se extends StatefulWidget {
  const se({super.key});

  @override
  State<se> createState() => _seState();
}

class _seState extends State<se> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Column(
                  children: [
                    ... List.generate(10, (index) =>   GestureDetector(
                      onDoubleTap: () {

                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Container(
                          height: height*1,
                          width: width*1,
                          decoration:  BoxDecoration(
                        
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage(
                                      Save2[selIndex][index]['img']
                                  )
                              )
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                title: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 250),
                                    child: Text(
                                        Save2[selIndex][index]['quote'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 22),
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 130),
                                  child: Text(
                                      Save2[selIndex][index]['author'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    )
                  ],
                )



            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Column(
                  children: [
                    ... List.generate(10, (index) =>   GestureDetector(
                      onDoubleTap: () {

                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Container(
                          height: height*1,
                          width: width*1,
                          decoration:  BoxDecoration(

                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      Save3[selIndex][index]['img']
                                  )
                              )
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                title: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 250),
                                    child: Text(
                                      Save3[selIndex][index]['quote'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 22),
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 20, left: 130),
                                  child: Text(
                                    Save3[selIndex][index]['author'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    )
                  ],
                )



            ),
          ],
        ),
      ),
    );
  }
}
