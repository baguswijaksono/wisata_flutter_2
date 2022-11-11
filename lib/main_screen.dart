import 'package:flutter/material.dart';
import 'package:flutter_application_4/main.dart';
import 'package:flutter_application_4/toursm_place.dart';


class MainScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Tempat Wisata Purworejo'),
 ),
 body: ListView.builder(
 itemBuilder: (context, index) {
 final TourismPlace place = tourismPlaceList[index];
 return InkWell(
 onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
 return DetailScreen(place:place,);
 }));
 },
 child: Card(
 child: Row(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: <Widget>[
 Expanded(
 flex: 1,
 child: Image.network(place.imageUrls[0]),
 ),
 Expanded(
 flex: 2,
 child: Padding(
 padding: const EdgeInsets.all(8.0),
 child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: <Widget>[
 Text(
 place.name,
 style: const TextStyle(fontSize: 16.0),
 ),
 const SizedBox(
 height: 10,
 ),
 Text(place.goal),
 ],
 ),
 ),
 )
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
 class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);
  
   @override
   _FavoriteButtonState createState() => _FavoriteButtonState();
   }
   bool isFavorite = false;
   class _FavoriteButtonState extends State<FavoriteButton> {
    @override
    Widget build(BuildContext context) {
      
      return IconButton(
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
            });
        },
        );
        }}