import 'dart:io';
import 'dart:ui'as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';
import 'package:quotes_app_new/utils/themeList/themeList.dart';
import 'package:quotes_app_new/utils/themeNew/themwNew.dart';
import 'package:share_extend/share_extend.dart';

class thoughtPage extends StatefulWidget {
  const thoughtPage({super.key});

  @override
  State<thoughtPage> createState() => _thoughtPageState();
}

class _thoughtPageState extends State<thoughtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(beStrong.length, (index) =>
                Stack(

                  children: [
                    Column(
                      children: [
                        RepaintBoundary(
                          key: posKey[index],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  im();
                                });
                              },
                              child: Container(
                                height: 700,
                                width: 500,
                                decoration: BoxDecoration(
                                    color:
                                    Colors.pink,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                           (selectImg)?
                                            Save2[selIndex][index]['img']
                                                :images[inx]['img']
                                        )
                                    )
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 300, left: 10),
                                          child: Text(
                                            "${ Save2[selIndex][index]['quote']}",
                                            style: TextStyle(
                                                fontSize: 22, color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 50),
                                          child: Text(
                                            "${ Save2[selIndex][index]['author']}",
                                            style: TextStyle(
                                                fontSize: 22, color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 80, left: 8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceEvenly,
                                          children: [
                                            IconButton(onPressed: () {
                                              setState(() {
                                                selIndex=index;
                                                cheak = !cheak;
                                                if (!cheak) {
                                                  like.removeAt([selIndex][index]);
                                                  like.removeAt([selIndex][index]);
                                                }
                                                else {
                                                  like.add(
                                                      Save2[selIndex][index]['quote']);
                                                  like.add(
                                                      Save2[selIndex][index]['author']);
                                                }
                                              });
                                            },
                                                icon: Icon(
                                                  cheak ? Icons.favorite : Icons
                                                      .favorite_border,
                                                  color: Colors.white,
                                                  size: 32,
                                                )),
                                            IconButton(
                                                onPressed: () async {
                                                  RenderRepaintBoundary boundary =
                                                  posKey[index]
                                                      .currentContext!
                                                      .findRenderObject()
                                                  as RenderRepaintBoundary;

                                                  ui.Image image =
                                                  await boundary.toImage();
                                                  ByteData? bytedata =
                                                  await image.toByteData(
                                                      format:
                                                      ui.ImageByteFormat.png);
                                                  Uint8List img =
                                                  bytedata!.buffer.asUint8List();
                                                  ImageGallerySaver.saveImage(img);
                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(Icons.save, size: 32,
                                                  color: Colors.white
                                                  ,)),
                                            IconButton(  onPressed: () async {
                                              RenderRepaintBoundary boundary =
                                              posKey[index].currentContext!
                                                  .findRenderObject()
                                              as RenderRepaintBoundary;

                                              ui.Image image = await boundary.toImage();
                                              ByteData? bytedata = await image.toByteData(
                                                  format: ui.ImageByteFormat.png);
                                              Uint8List img = bytedata!.buffer.asUint8List();

                                              final path =
                                              await getApplicationDocumentsDirectory();
                                              File file = File("${path.path}/img.png");
                                              file.writeAsBytes(img);
                                              ShareExtend.share(file.path, "image");
                                              int location = WallpaperManager
                                                  .BOTH_SCREEN; //can be Home/Lock Screen
                                              bool result =
                                              await WallpaperManager.setWallpaperFromFile(
                                                  file.path, location);
                                              Navigator.pop(context);
                                              //
                                            },
                                                icon: Icon(
                                                  Icons.wallpaper,
                                                  size: 32, color: Colors.white
                                                  ,)),
                                            IconButton(  onPressed: () async {
                                              RenderRepaintBoundary boundary =
                                              posKey[index].currentContext!
                                                  .findRenderObject()
                                              as RenderRepaintBoundary;

                                              ui.Image image = await boundary.toImage();
                                              ByteData? bytedata = await image.toByteData(
                                                  format: ui.ImageByteFormat.png);
                                              Uint8List img = bytedata!.buffer.asUint8List();

                                              final path =
                                              await getApplicationDocumentsDirectory();
                                              File file = File("${path.path}/img.png");
                                              file.writeAsBytes(img);
                                              ShareExtend.share(file.path, "image");

                                              //
                                            },
                                                icon: Icon(
                                                  Icons.share,
                                                  size: 32, color: Colors.white
                                                  ,)),
                                            IconButton(onPressed: () {
                                                         setState(() {
                                                           selectImg=true;
                                                           inx=0;
                                                           im();
                                                         });
                                                         Navigator.of(context).pushNamed('/img');
                                            },
                                                icon: Icon(
                                                  Icons.pages_outlined, size: 32,
                                                  color: Colors.white
                                                  ,)),

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
  void im()
  {
    setState(() {
      selectImg=false;
    });
  }

}

List<GlobalKey> posKey = List.generate(beStrong.length, (index) => GlobalKey());


bool selectImg = true;
String Si = '${Save2[selIndex][index2]['img']}';
int index2 = 0;
bool cheak = false;
int inx=0;