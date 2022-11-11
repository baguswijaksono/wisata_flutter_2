import 'package:flutter/material.dart';
import 'package:flutter_application_4/main_screen.dart';
import 'package:flutter_application_4/toursm_place.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Pantai Jatimalang',
    theme: ThemeData(),
    home:  MainScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
 final TourismPlace place;
 const DetailScreen({Key? key, required this.place}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
  padding: const EdgeInsets.all(0.0),
  child:   GestureDetector(
     child: ClipRRect( 
      child: Stack(             
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 250,
                child: Image.network(place.imageUrls[0],
                 fit: BoxFit.fill,),
              ), 
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container( child: Padding(
padding: const EdgeInsets.all(8.0),
child: CircleAvatar(
backgroundColor: Colors.grey,
child: IconButton(
icon: const Icon(
Icons.arrow_back,
 color: Colors.white,
 ),
 onPressed: () {
 Navigator.pop(context);
 },

 ),
 ),
 ),

 ),const FavoriteButton(),
                ],
              ),      
            ],
          ),
                              ),
  ),
),  
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(place.openDays),
                      ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(height: 8.0),
                          Text(place.openTime),
                          ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.monetization_on),
                              SizedBox(height: 8.0),
                              Text(place.ticketPrice),
                              ],
                              ),
                              ],
                              ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(place.description, textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Oxygen',fontWeight: FontWeight.w300) ,
                               ),
),
               SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(place.imageUrls[1],
                 fit: BoxFit.fill,)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(place.imageUrls[2],
                 fit: BoxFit.fill,)
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(place.imageUrls[3],
                 fit: BoxFit.fill,)
                              ),
                            ),
                          ],
                      ),
                    ),
],
),
),
);
}
}