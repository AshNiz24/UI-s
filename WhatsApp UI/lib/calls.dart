import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'status.dart';

class CallScreen extends StatefulWidget {
  static const String id = "CallScreen";
  @override
  _CallScreenState createState() => _CallScreenState();
}

var calls = {
  0: [
    'William Anders',
    'images/boy.png',
    0,
    false,
    false,
    '20 minutes ago',
    false,
  ],
  1: [
    'Mom',
    'images/cliffside-unsplash.jpg',
    0,
    false,
    true,
    '45 minutes ago',
    false,
  ],
  2: [
    'Hannah',
    'images/woman2.png',
    1,
    false,
    false,
    '55 minutes ago',
    false,
  ],
  3: [
    'Dad',
    'images/man.png',
    0,
    true,
    true,
    '58 minutes ago',
    false,
  ],
  4: [
    'Cayne Don',
    'images/flower.jpg',
    0,
    true,
    true,
    'Today 04:30 pm',
    false,
  ],
  5: [
    'Abby Gale',
    'images/plant-unsplash.jpg',
    1,
    true,
    true,
    'Today 03:30 pm',
    true,
  ],
  6: [
    'Williams Anders',
    'images/boy.png',
    0,
    false,
    true,
    'Today 12:15 pm',
    false,
  ],
  7: [
    'Williams Anders',
    'images/boy.png',
    1,
    true,
    true,
    'Today 12:10 pm',
    false,
  ],
  8: [
    'Hannah',
    'images/woman2.png',
    1,
    false,
    true,
    'Today 11:30 pm',
    false,
  ],
};

class _CallScreenState extends State<CallScreen> {
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
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {}),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
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
                Navigator.pop(context);
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
                      child: Center(
                        child: Text(
                          'CHATS',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
                      child: Center(
                        child: Text(
                          'STATUS',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                ),
                width: 115,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'CALLS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
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
              Icons.add_call,
              size: 28,
            ),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return CallTile(
              name: calls.values.elementAt(index).elementAt(0),
              img: calls.values.elementAt(index).elementAt(1),
              video: calls.values.elementAt(index).elementAt(2),
              isMissed: calls.values.elementAt(index).elementAt(3),
              inComing: calls.values.elementAt(index).elementAt(4),
              time: calls.values.elementAt(index).elementAt(5),
            );
          },
          separatorBuilder: (context, index) {
            return calls.values.elementAt(index).elementAt(6)
                ? SizedBox(
                    height: 10,
                  )
                : Divider(
                    thickness: 0.75,
                    endIndent: 10,
                    indent: 60,
                  );
          },
          itemCount: calls.length),
    );
  }
}

class CallTile extends StatelessWidget {
  final String name;
  final String img;
  final String time;
  final int video;
  final bool isMissed;
  final bool inComing;
  CallTile(
      {this.name,
      this.time,
      this.img,
      this.video,
      this.isMissed,
      this.inComing});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            img != null
                ? Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(img),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.all(8.0),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        inComing
                            ? CupertinoIcons.arrow_down_left
                            : CupertinoIcons.arrow_up_right,
                        color: isMissed ? Colors.red : Color(0xff25d366),
                        size: 20,
                      ),
                      Text(
                        time,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            video == 0 ? Icons.call : Icons.videocam_rounded,
            size: 29,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
