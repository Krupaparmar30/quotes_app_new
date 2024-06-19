import 'package:flutter/material.dart';

class QuoteModel{
  String? author;
  String? quote;
  String? img;
  // String? image;
  QuoteModel({this.author,this.quote,this.img});


  factory QuoteModel.fromQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote'],img: m1['img']);
  }

  List<QuoteModel> quoteModelList=[];
  QuoteModel.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
    {
      quoteModelList.add(QuoteModel.fromQuotes(l1[i]));

    }
  }
}