import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_wa_tut/status.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'Chatscreen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

var chat = {
  0: [
    'Abby Williams',
    'images/woman.png',
    'Hi sorry about earlier, was a bit busy',
    '10:30 pm',
  ],
  1: [
    'Williams Anders',
    'images/boy.png',
    'Hey, whatsup bro',
    '10:03 pm',
  ],
  2: [
    'Andy',
    null,
    'Got some crackers come quick and u can have them',
    '08:30 pm',
  ],
  3: [
    'Brunedette',
    null,
    'Can u email the pic?',
    '08:00 pm',
  ],
  4: [
    'Mom',
    'images/cliffside-unsplash.jpg',
    'Had dinner yet?',
    '07:40 pm',
  ],
  5: [
    'Dad',
    'images/man.png',
    'Hey kid get a smoothie on ur way back',
    '07:30 pm',
  ],
  6: [
    'Cayne Don',
    'images/flower.jpg',
    'Thanks for the party😁',
    '06:30 pm',
  ],
  7: [
    'Hannah',
    'images/woman2.png',
    'Meet me at 8 tomorrow',
    '05:30 pm',
  ],
  8: ['Abby Gale', 'images/plant-unsplash.jpg', 'Party!!!!', '04:30 pm']
};

class _ChatScreenState extends State<ChatScreen> {
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
              onTap: () {
                Navigator.pushNamed(context, StatusScreen.id);
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
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xff25d366),
            onPressed: () {},
            child: Icon(
              Icons.message,
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ChatTile(
            name: chat.values.elementAt(index).elementAt(0),
            img: chat.values.elementAt(index).elementAt(1),
            lastMsg: chat.values.elementAt(index).elementAt(2),
            time: chat.values.elementAt(index).elementAt(3),
          );
        },
        separatorBuilder: (context, index) {
          return HDivider();
        },
        itemCount: chat.length,
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String img;
  final String lastMsg;
  final String time;
  ChatTile({this.name, this.img, this.lastMsg, this.time});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            img != null
                ? Padding(
                    padding: EdgeInsets.all(8),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(img),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.account_circle,
                      size: 55,
                      color: Colors.grey.shade500,
                    ),
                  ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    lastMsg,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                time,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

class HDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.75,
      endIndent: 10,
      indent: 60,
      color: Colors.grey.shade300,
    );
  }
}
