import 'dart:ui';

import 'package:flutter/material.dart';
import 'booksdata.dart';

class DetailPage extends StatefulWidget {
  final BooksData place;

  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Buku"),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          //child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  height: (MediaQuery
                      .of(context)
                      .size
                      .height) / 3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Image.network(widget.place.imageUrls[index]),
                      );
                    },
                    itemCount: widget.place.imageUrls.length,
                  ),
                ),

                Text(
                  "${widget.place.title}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                Text(
                  "${widget.place.description}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 24,),
                Text(
                  "Id  : ${widget.place.id}",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(
                  "Authors : ${widget.place.authors}",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Publisher  : ${widget.place.publisher}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Published Date : ${widget.place.publishedDate}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Categories : ${widget.place.categories}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Image Link : ${widget.place.imageUrls}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Preview Link : ${widget.place.previewLink}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15),
                ),



                SizedBox(height: 24,),

              ],
            ),
          ),
        )
      //),
    );
  }
}
