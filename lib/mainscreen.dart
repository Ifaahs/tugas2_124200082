import 'package:flutter/material.dart';
import 'package:praktugas2/tourismplace.dart';

import 'detailpage.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page Wisata Turis"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          // Instansiasi
          // dengan format
          // final namaClass namaVariabel = namaConstructor
          final TourismPlace place = tourismPlaceList[index];

          // Inkwell mirip seperti button yang bisa diklik dan ada fungsinya
          // Bedanya adalah button hanyalah sebuah tombol
          // Sedangkan Inkwell adalah container yang bisa di klik
          // ElevatedButton menggunakan onPressed, sedangkan InkWell menggunakan onTap
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(place : place)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(place.imageUrls[0], width: 120,),
                  Text(place.name,style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(place.ticketPrice)
                ],
              ),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}