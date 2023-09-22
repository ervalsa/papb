import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papb_praktikum/detail_screen.dart';
import 'package:papb_praktikum/place.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalimantan'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Place place = placeLists[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Image.network(place.imageUrl)
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            place.namaTempat,
                            style: const TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            place.namaDaerah
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: placeLists.length,
      )
    );
  }
}