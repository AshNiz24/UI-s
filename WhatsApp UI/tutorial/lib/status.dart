import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_wa_tut/chatscreen.dart';

var statusList = {
  0: [
    'Williams Anders',
    'images/boy.png',
    3.0,
    4.5,
    '1 minute ago',
    false,
  ],
  1: [
    'Mom',
    'images/cliffside-unsplash.jpg',
    1.0,
    0.0,
    '20 minutes ago',
    false,
  ],
  2: [
    'Hannah',
    'images/woman2.png',
    5.0,
    2.5,
    '28 minutes ago',
    false,
  ],
  3: [
    'Dad',
    'images/man.png',
    2.0,
    3.5,
    '53 minutes ago',
    false,
  ],
  4: [
    'Cayne Don',
    'images/flower.jpg',
    4.0,
    3.0,
    'Today 04:30 pm',
    false,
  ],
  5: [
    'Abby Gale',
    'images/plant-unsplash.jpg',
    1.0,
    0.0,
    'Today 03:30 pm',
    true,
  ],
};

class StatusScreen extends StatefulWidget {
  static const String id = 'statusScreen';
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {})
        ],
        bottom: AppBar(
          backgroundColor: Color(0xff075e54),
          automaticallyImplyLeading: false,
          leading: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white.withOpacity(0.5),
              size: 28,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ChatScreen.id);
              },
              child: Container(
                width: 115,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CHATS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 115,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white, width: 5),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'STATUS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 115,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CALLS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'images/me.jfif',
                            ),
                          ),
                          Positioned(
                            left: 30,
                            top: 30,
                            child: CircleAvatar(
                              backgroundColor: Color(0xff25d366),
                              radius: 10,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Status',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Tap to add status update',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  'Recent Updates',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              StatusTiles(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 20,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey.shade50,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: ImageIcon(
                        AssetImage('images/WApencil.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 20,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff25d366),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StatusTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                DottedBorder(
                  color: Colors.teal.shade300,
                  borderType: BorderType.Circle,
                  radius: Radius.circular(27),
                  dashPattern: [
                    (2 * pi * 27) /
                        statusList.values.elementAt(index).elementAt(2),
                    statusList.values.elementAt(index).elementAt(3),
                  ],
                  strokeWidth: 3,
                  child: CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        statusList.values.elementAt(index).elementAt(1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${statusList.values.elementAt(index).elementAt(0)}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${statusList.values.elementAt(index).elementAt(4)}',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return statusList.values.elementAt(index).elementAt(5)
              ? SizedBox(
                  height: 20,
                )
              : Divider(
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.grey.shade300,
                  thickness: 1,
                );
        },
        itemCount: statusList.length,
      ),
    );
  }
}
