import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _dataCategories = [
    'Romance',
    'Girly',
    'Fashion',
    'Games',
    'Sad',
    'Fantasy',
    'Thriler',
    'Nature',
    'People',
    'Places',
    'Biography',
    'Greek'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

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
                    Text('Choose Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text('5 Selected',
                      style: TextStyle(
                        color: Colors.blue
                      ),  
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 800,
                  child: GridView.count(
          crossAxisCount: 4,
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisSpacing: 1.0,
          padding: const EdgeInsets.only(left: 15, right: 15),
          children: List.generate(12, (index) {
            String text = _dataCategories[index];
            ++index;
            return GestureDetector(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    left: 5,
                    child: Container(
                      width: 80,
                      child: Stack(
                        children: <Widget>[
                          Image.asset('assets/images/image_$index.png'),
                          Container(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                color: Colors.black.withOpacity(0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/image_$index.png'),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              text,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            );
          })
        ),
                ),
              )
            ],
          )
      )
    );
  }
}
