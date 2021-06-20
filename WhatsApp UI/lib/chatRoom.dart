import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  final String name;
  final String img;
  ChatRoom({this.name, this.img});
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

var chatMsgs = {
  0: [
    'Hey man how are you',
    true,
    '10:00 pm',
  ],
  1: [
    'Hey man I am fine been a while',
    false,
    '10:01 pm',
  ],
  2: [
    'How are you man',
    false,
    '10:01 pm',
  ],
  3: ['I\'m fine man.', true, '10:02 pm'],
  4: [
    'What have you been upto these days!',
    true,
    '10:02 pm',
  ],
  5: [
    'I have been learning flutter from youtube channels',
    false,
    '10:03 pm',
  ],
  6: ['Cool man! I\'ve been doing the same recently', true, '10:03 pm'],
  7: [
    'Wow that\'s so cool. We should collaborate sometime',
    false,
    '10:04pm',
  ],
  8: [
    'Yea definitely I will hit you up when a project comes',
    true,
    '10:04 pm',
  ],
  9: [
    'Alright man Take care will catch up sometime',
    true,
    '10:04 pm',
  ],
  10: [
    'Hi sorry about earlier, was a bit busy\n yea you take care',
    false,
    '10:30 pm'
  ],
};

class _ChatRoomState extends State<ChatRoom> {
  bool emptyString = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Row(
          children: [
            widget.img != null
                ? CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(widget.img),
                  )
                : Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.account_circle,
                      size: 36,
                      color: Colors.grey.shade500,
                    ),
                  ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'online',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.videocam_rounded,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.phone,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 26,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/chatBG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return MessageBubble(
                    msgs: chatMsgs.values.elementAt(index).elementAt(0),
                    isMe: chatMsgs.values.elementAt(index).elementAt(1),
                    time: chatMsgs.values.elementAt(index).elementAt(2));
              },
              itemCount: chatMsgs.length,
            )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                    top: 8.0,
                    bottom: 8.0,
                    right: 6.0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.84,
                    height: MediaQuery.of(context).size.width * 0.1,
                    padding: EdgeInsets.only(
                      right: 10,
                      left: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey.shade500,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: MediaQuery.of(context).size.width * 0.1,
                            child: TextField(
                              onChanged: (String value) {
                                setState(() {
                                  if (value != null || value != '')
                                    emptyString = false;
                                  else if (value == '') emptyString = true;
                                });
                              },
                              keyboardType: TextInputType.multiline,
                              cursorColor: Colors.teal,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Type a message...',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.paperclip,
                          color: Colors.grey.shade500,
                          size: 27,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        emptyString
                            ? Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.grey.shade500,
                                size: 27,
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff00897b),
                  radius: 23,
                  child: emptyString
                      ? Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 30,
                        )
                      : Icon(
                          CupertinoIcons.paperplane,
                          color: Colors.white,
                        ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String msgs;
  final bool isMe;
  final String time;
  MessageBubble({this.time, this.isMe, this.msgs});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            width: msgs.length < 10
                ? MediaQuery.of(context).size.width * 0.25
                : MediaQuery.of(context).size.width * 0.5,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: isMe
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      topLeft: Radius.circular(8))
                  : BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
              color: isMe ? Color(0xffe1ffc7) : Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  msgs,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      time,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
