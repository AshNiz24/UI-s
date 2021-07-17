import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_clone/yt_data.dart';

class ShortsScreen extends StatefulWidget {
  static const String id = 'ShortsScreen';

  @override
  _ShortsScreenState createState() => _ShortsScreenState();
}

YTData ytData = YTData();

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: ytData.shortsList.length,
            itemBuilder: (context, index) {
              return ShortsList(
                name: ytData.shortsList.values.elementAt(index).elementAt(0),
                profilepic:
                    ytData.shortsList.values.elementAt(index).elementAt(1),
                vid: ytData.shortsList.values.elementAt(index).elementAt(2),
                caption: ytData.shortsList.values.elementAt(index).elementAt(3),
                likes: ytData.shortsList.values.elementAt(index).elementAt(4),
                comments:
                    ytData.shortsList.values.elementAt(index).elementAt(5),
              );
            }),
      ),
    );
  }
}

class ShortsList extends StatefulWidget {
  final String name;
  final String profilepic;
  final String vid;
  final String caption;
  final String likes;
  final String comments;
  ShortsList(
      {this.vid,
      this.likes,
      this.comments,
      this.caption,
      this.name,
      this.profilepic});
  @override
  _ShortsListState createState() => _ShortsListState();
}

class _ShortsListState extends State<ShortsList> {
  bool isLike = false;
  bool isDislike = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            widget.vid,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            left: 15.0,
            right: 15.0,
            bottom: 8.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.275,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.ellipsis,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: isLike ? Colors.blue : Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.likes,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDislike = !isDislike;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.thumb_down,
                            color: isDislike ? Colors.blue : Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Dislike',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.message_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.comments,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          CupertinoIcons.arrowshape_turn_up_right_fill,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.caption,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 12.5,
                                backgroundImage: AssetImage(widget.profilepic),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              widget.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            width: 32,
                            height: 32,
                            child: Image.asset(
                              'images/music_bar.gif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
