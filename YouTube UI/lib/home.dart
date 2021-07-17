import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:youtube_clone/shorts_screen.dart';
import 'package:youtube_clone/vidPlay.dart';
import 'yt_data.dart';

YTData ytData = YTData();

class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(
                'images/ytLOGO.png',
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'YouTube',
                style: TextStyle(
                  fontFamily: 'TradeGothicLTStd',
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -2,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.cast,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {}),
            SizedBox(
              width: 10,
            ),
            IconButton(
                icon: Icon(
                  CupertinoIcons.bell,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {}),
            SizedBox(
              width: 10,
            ),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {}),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ65YFUC_nTSMi2ylOibUouLh8W7WY0WPjo6Q&usqp=CAU',
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Stack(
          children: [
            ListView.builder(
                itemCount: ytData.vidList.length,
                itemBuilder: (context, index) {
                  return Videos(
                    index: index,
                    title: ytData.vidList.values.elementAt(index).elementAt(0),
                    imgUrl: ytData.vidList.values.elementAt(index).elementAt(1),
                    name: ytData.vidList.values.elementAt(index).elementAt(2),
                    views: ytData.vidList.values.elementAt(index).elementAt(3),
                    uploadDate:
                        ytData.vidList.values.elementAt(index).elementAt(4),
                    profilePic:
                        ytData.vidList.values.elementAt(index).elementAt(5),
                    duration:
                        ytData.vidList.values.elementAt(index).elementAt(6),
                  );
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 5),
                  color: Colors.white,
                  height: 60,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.compass,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                ytData.filter.elementAt(index),
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        );
                      } else
                        return Center(
                          child: YTFilter(
                            label: ytData.filter.elementAt(index),
                            isSelected: ytData.filter.elementAt(index) == 'All'
                                ? true
                                : false,
                          ),
                        );
                    },
                    separatorBuilder: (context, index) {
                      if (index == 0) {
                        return VerticalDivider(
                          indent: 5,
                          endIndent: 5,
                          color: Colors.black,
                        );
                      } else
                        return SizedBox(
                          width: 10,
                        );
                    },
                    itemCount: ytData.filter.length,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 65,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.home_filled,
                                size: 30,
                                color: Colors.black,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: -0.75,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, ShortsScreen.id);
                        },
                        child: Container(
                          width: 65,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 4,
                              ),
                              Image.asset(
                                'images/ytShorts.png',
                                width: 25,
                                height: 25,
                                color: Colors.black,
                              ),
                              Text(
                                'Shorts',
                                style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: -0.75,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 65,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                CupertinoIcons.add_circled,
                                size: 45,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 65,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ImageIcon(
                                AssetImage('images/ytSub.png'),
                                size: 28,
                                color: Colors.black,
                              ),
                              Text(
                                'Subscriptions',
                                style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: -0.75,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 65,
                          height: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ImageIcon(
                                AssetImage('images/ytLib.png'),
                                size: 28,
                                color: Colors.black,
                              ),
                              Text(
                                'Library',
                                style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: -0.75,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Videos extends StatelessWidget {
  final int index;
  final String title;
  final String imgUrl;
  final String name;
  final String uploadDate;
  final String profilePic;
  final String duration;
  final String views;
  Videos(
      {this.index,
      this.name,
      this.duration,
      this.uploadDate,
      this.views,
      this.title,
      this.profilePic,
      this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, YTVidPlayScreen.id);
      },
      child: Column(
        children: [
          index == 0
              ? SizedBox(
                  height: 40,
                )
              : SizedBox(
                  height: 0,
                ),
          Container(
            margin: EdgeInsets.only(
              bottom: 3,
              left: 3,
              right: 3,
            ),
            height: MediaQuery.of(context).size.height * 0.41,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.32,
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.85,
                      top: MediaQuery.of(context).size.height * 0.26,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                          color: Colors.black,
                        ),
                        child: Text(
                          duration,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(profilePic),
                      radius: 22,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.76,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              Text(
                                '\t∙\t',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              Text(
                                views + ' views',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              Text(
                                '\t∙\t',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              Text(
                                uploadDate,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Icon(
                      CupertinoIcons.ellipsis_vertical,
                      size: 22,
                    )
                  ],
                ),
              ],
            ),
          ),
          index == ytData.vidList.length - 1
              ? SizedBox(
                  height: 60,
                )
              : SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}

class YTFilter extends StatelessWidget {
  final String label;
  final bool isSelected;
  YTFilter({this.isSelected, this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 3,
      ),
      decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade700 : Colors.grey.shade200,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.grey.shade400,
          )),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
