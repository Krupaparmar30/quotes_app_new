import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotes_app_new/screens/themes_pages/themes_pages.dart';
import 'package:quotes_app_new/utils/quotesList/quotesList.dart';
import 'package:quotes_app_new/utils/quotesModel/quotesModel.dart';
import 'package:quotes_app_new/utils/themeNew/themwNew.dart';

class editPage extends StatefulWidget {
  const editPage({super.key});

  @override
  State<editPage> createState() => _editPageState();
}
QuoteModel? quoteModel;
class _editPageState extends State<editPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height*0.3,
              width: width*1,
              decoration: BoxDecoration(
                color: Colors.white

              ),
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Text(
                      'Edit',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  SelectableText(
                    cursorColor: Colors.black,
                       "${   quotesList[selIndex]['quote']}",
                //    "${quoteModel?.quoteModelList[selIndex].quote!.toString()}\n",
                    style: TextStyle(

                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,


                    ),

                  ),
                    ...List.generate(1, (index) => IconButton(onPressed: () {
                      Clipboard.setData(ClipboardData(text: quotesList[selIndex]['quote']));
                    }, icon: Icon(Icons.copy,color: Colors.black,))),
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          selectTheme
                        )
                      )
                    ),
                    child: Column(
                      children: [
                        SelectableText(
                          '${quotesList[selIndex]['quote']}'

                         // "${quoteModel!.quoteModelList[selIndex].quote!}"
                        ),


                      ],
                    ),
                  )
                  ],
                ),
                    ]
                            ),
              )
            ),
          )
        ],
      ),
    );
  }
}
