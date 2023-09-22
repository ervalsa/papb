import 'package:flutter/material.dart';
import 'package:papb_praktikum/place.dart';

class DetailScreen extends StatelessWidget {
  final Place place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(place.imageUrl),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  place.namaTempat,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  place.namaDaerah,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16.0
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}