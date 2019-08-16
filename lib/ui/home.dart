import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reading_app/ui/detail.dart';

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

  Widget _generateBookCategories({
    int index
  }) {
    // int localIndex = index + 1;
    return Container(
      padding: const EdgeInsets.only(bottom: 0, left: 4, right: 4),
      // decoration: BoxDecoration(color: Colors.red),

      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail(name: 'Movie', image: 'assets/images/image_$index.png',)),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(-8, 6),
                            blurRadius: 3)
                      ]
                    ),
                    child: Image.asset(
                      'assets/images/image_$index.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
//                Positioned.fill(
//                  child: BackdropFilter(
//                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
//                    child: Container(
//                      // width: 100,
//                      // height: 100,
//                      color: Colors.black.withOpacity(0.1),
//                    ),
//                  ),
//                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text('Movie',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double itemHeight = size.height;
    final double itemWidth = size.width;

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
        GridView.count(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            physics: ScrollPhysics(),
            crossAxisCount: 4,
            shrinkWrap: true,
            mainAxisSpacing: 10.0,
            childAspectRatio: itemWidth / itemHeight,
            children: List.generate(12, (int index) {
              return  _generateBookCategories(
                index: index+1,
              );
            }))
      ],
    )));
  }
}

// @immutable
// class GenerateBookCategories extends StatelessWidget {
//   int index;
  
//   GenerateBookCategories({
//     Key key,
//     int index,
//   }) : super(key: key);

//   @override
  
// }
