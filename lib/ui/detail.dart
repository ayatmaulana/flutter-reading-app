import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/image_8.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Very Human',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('By: Alexander Colina',
                    style: TextStyle(fontSize: 10, color: Color(0xFFA3A4AC))),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildDetailInfo(
                        icon: Icons.remove_red_eye, text: '544.555'),
                    _buildDetailInfo(icon: Icons.favorite, text: '245.665'),
                    _buildDetailInfo(icon: Icons.comment, text: '45.332'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Synopys',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'A tranical ship captain decides to exact revenge on him abused crew after they form a mutiny against him, but the sailor ...')
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: new InkWell(
                    onTap: () => print('hello'),
                    child: new Container(
                      // width: 200.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: new BorderRadius.circular(40.0),
                      ),
                      child: new Center(
                        child: new Text(
                          'Start Reading',
                          style: new TextStyle(
                              fontSize: 14.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Friend Who Read This',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/friends/friend_1.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/images/friends/friend_2.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/images/friends/friend_3.png',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/images/friends/friend_4.png',
                            width: 60,
                            height: 60,
                          )
                        ],
                      )
                    ],
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Reading List',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildDetailedList(imageAsset: 'assets/images/details/detail_1.png', progress: 50.0, title: 'Seni untuk bersikap bodo amat'),
                      _buildDetailedList(imageAsset: 'assets/images/image_2.png', progress: 150.0, title: 'This is my startup'),
                      _buildDetailedList(imageAsset: 'assets/images/image_3.png', progress: 10.0, title: 'Startup pedia'),
                      _buildDetailedList(imageAsset: 'assets/images/image_5.png', progress: 250.0, title: '10 cara menahan kencing'),
                      // _buildDetailedList(),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildDetailedList({String imageAsset, double progress, String title}) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            imageAsset,
            height: 140,
          ),
          Container(
            constraints: BoxConstraints(
                maxHeight: 150.0,
                maxWidth: 220.0,
                minWidth: 180.0,
                minHeight: 150.0),
            // decoration: BoxDecoration(color: Colors.red),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        title,
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'A spoiled heiress running away from her family is helped by a man who is actually a reporter in need of a story.',
                  style: TextStyle(fontSize: 12, color: Color(0xFFA3A4AC)),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Chapter 3: Far Away',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFA3A4AC)
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Stack(
                  children: <Widget>[
                    Container(
                      // alignment: Alignment.center,
                      width: 1000,
                      height: 5,
                      color: Color(0xFFDADADA),
                    ),
                    Container(
                      width: progress,
                      height: 5,
                      color: Color(0xFF2F3346),
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildDetailInfo({IconData icon, String text}) {
    return Container(
      child: Row(children: <Widget>[
        Icon(icon, color: Color(0xFFA3A4AC)),
        SizedBox(
          width: 5,
        ),
        Text(text, style: TextStyle(fontSize: 10, color: Color(0xFFA3A4AC)))
      ]),
    );
  }
}
