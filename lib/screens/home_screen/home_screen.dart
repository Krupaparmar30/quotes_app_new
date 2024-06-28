import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';
import 'package:quotes_app_new/utils/icons.dart';
import 'package:quotes_app_new/utils/quotesList/quotesList.dart';
import 'package:quotes_app_new/utils/quotesModel/quotesModel.dart';
import 'package:quotes_app_new/utils/themeList/themeList.dart';
import 'package:share_extend/share_extend.dart';

import '../../utils/quotesList/quotesList.dart';

QuoteModel? quoteModel;

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  void initState() {
    quoteModel = QuoteModel.toList(quotesList);
    super.initState();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              quotesList.length,
              (index) => Column(
                children: [
                  RepaintBoundary(
                    key: bgImage[index],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 650,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  quotesList[index]['img'],
                                ))),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ListTile(
                                title: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 250),
                                    child: Text(
                                      quotesList[index]['quote'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 22),
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 150),
                                  child: Text(
                                    quotesList[index]['author'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 5,
                                    height: 20,
                                  ),

                                  IconButton(
                                      onPressed: () async {
                                        RenderRepaintBoundary boundary =
                                            bgImage[index]
                                                    .currentContext!
                                                    .findRenderObject()
                                                as RenderRepaintBoundary;
                                        ui.Image image =
                                            await boundary.toImage();
                                        ByteData? byteData =
                                            await image.toByteData(
                                                format: ui.ImageByteFormat.png);
                                        Uint8List img =
                                            byteData!.buffer.asUint8List();
                                        final path =
                                            getApplicationDocumentsDirectory();
                                        File file = File("${path}/img.png");
                                        file.writeAsBytes(img);
                                        ShareExtend.share(file.path, "image");
                                      },
                                      icon: Icon(
                                        Icons.share,
                                        color: Colors.white,
                                        size: 32,
                                      )),

                                  //todo
                                  IconButton(
                                      onPressed: () async {
                                        RenderRepaintBoundary boundary =
                                            bgImage[index]
                                                    .currentContext!
                                                    .findRenderObject()
                                                as RenderRepaintBoundary;
                                        ui.Image image =
                                            await boundary.toImage();
                                        ByteData? byteData =
                                            await image.toByteData(
                                                format: ui.ImageByteFormat.png);
                                        Uint8List img =
                                            byteData!.buffer.asUint8List();
                                        ImageGallerySaver.saveImage(img);
                                        // Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.save_alt,
                                        color: Colors.white,
                                        size: 32,
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        Clipboard.setData(ClipboardData(
                                            text: quotesList[index]['quote']));

                                        // Navigator.of(context).pushNamed('/edit');
                                      },
                                      icon: Icon(
                                        Icons.copy,
                                        color: Colors.white,
                                        size: 32,
                                      )),
                                  // IconButton(
                                  //
                                  //     onPressed: () {
                                  //       selIndex=index;
                                  //
                                  //       Navigator.of(context).pushNamed('/edit');
                                  //     },
                                  //     icon: Icon(
                                  //       Icons.edit,
                                  //       color: Colors.black,
                                  //       size: 32,
                                  //     ))
                                  //               IconButton(
                                  //                   onPressed: () {
                                  //                     Clipboard.setData(ClipboardData(
                                  //                         text: quotesList[index]['quote']));
                                  //                 Navigator.of(context).pushNamed('/new');
                                  //               }, icon: Icon(Icons.add))
                                ],
                              ),
                              SizedBox(height: 90),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

//
// Widget BOX1(String quote, String author, String img) {
//   return RepaintBoundary(
//     key: globalImage[index],
//     child: Container(
//       height: 650,
//       width: 400,
//       decoration: BoxDecoration(
//           color: Colors.pink,
//           image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             ListTile(
//               title: Center(
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 250),
//                   child: Text(
//                     quote,
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w800,
//                         fontSize: 22),
//                   ),
//                 ),
//               ),
//               subtitle: Padding(
//                 padding: const EdgeInsets.only(top: 20, left: 150),
//                 child: Text(
//                   author,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             SizedBox(height: 90),
//           ],
//         ),
//       ),
//     ),
//   );
// }
int index = 0;
List<GlobalKey> bgImage =
    List.generate(quotesList.length, (index) => GlobalKey());
