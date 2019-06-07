import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String> _dataCategories = [
  //   'Romance',
  //   'Girly',
  //   'Fashion',
  //   'Games',
  //   'Sad',
  //   'Fantasy',
  //   'Thriler',
  //   'Nature',
  //   'People',
  //   'Places',
  //   'Biography',
  //   'Greek'
  // ];

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    // final double itemWidth = size.width / 2;

    return Scaffold(
        body: SafeArea(
            child: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Choose Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                '5 Selected',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // decoration: BoxDecoration(color: Colors.red),

            child: Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/image_5.png',
                        fit: BoxFit.fitWidth,
                      ),
                      // Container(
                      //   child: BackdropFilter(
                      //     filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      //     child: Container(
                      //       color: Colors.black.withOpacity(0),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                Text('Movie',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15))
              ],
            ),
          ),
        )
      ],
    )));
  }
}
