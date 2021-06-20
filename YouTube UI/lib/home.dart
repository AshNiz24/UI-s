import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

var filter = [
  'Explore',
  'All',
  'Conversation',
  'Comedy',
  'Humans',
  'Universe',
  'Games',
  'Flutter',
  'Candy',
  'Music',
  'Mixes',
  'Painting',
  'Aircrafts',
  'Recently Uploaded',
  'Live'
];

var vidList = {
  0: [
    'I summoned a forbidden Minecraft Boss - Part 37',
    'https://i.ytimg.com/vi/yB4Q3ezW9fM/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDd4CMesg5YZs0M2KmhZ8yqKh5rKA',
    'PewDiePie',
    '7,340,803',
    'Nov 29, 2019',
    'https://yt3.ggpht.com/ytc/AAUvwnga3eXKkQgGU-3j1_jccZ0K9m6MbjepV0ksd7eBEw=s88-c-k-c0x00ffffff-no-rj',
    '15:53'
  ],
  1: [
    'Flutter Animation Tutorial #6 - Animation Controllers',
    'https://i.ytimg.com/vi/k5BDKI7R6ag/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDzo6krNYqE99M0anvkyOCCrs18KQ',
    'The Net Ninja',
    '10,892',
    'Aug 6, 2020',
    'https://yt3.ggpht.com/ytc/AAUvwni-Wm0ZBDYJYFwySP2esxgc8s9mKiwmI3yJrmjlHQ=s88-c-k-c0x00ffffff-no-rj',
    '21:29',
  ],
  2: [
    'Digital Business Card UI using Flutter | Time-lapse',
    'https://i.ytimg.com/vi/wfiQbEdNLQU/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCi4quMzqi9uRe4hMQnsvDjSWZw3g',
    'DevBees',
    '110',
    'Mar 30, 2021',
    'https://yt3.ggpht.com/ytc/AAUvwngdpJTfdbXnkHMJ9vYEv7aEuZf-m---p2UqqI7I=s48-c-k-c0x00ffffff-no-rj',
    '4:17',
  ],
  3: [
    '25 AMAZING MAGIC TRICKS ANYONE CAN DO',
    'https://i.ytimg.com/vi/SNfO2r-2XVc/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLASdXrEt1mn0YRAzZ7k1-DOgonMKQ',
    '5-Minute Crafts',
    '510,690',
    'Feb 5, 2019',
    'https://yt3.ggpht.com/ytc/AAUvwnicrG9RNUfo_lxIwy179qaAChmgaWrOs6Y4_r7CKg=s88-c-k-c0x00ffffff-no-rj',
    '14:53',
  ],
  4: [
    'Elektronomia - Sky High pt. || [NCS Release]',
    'https://i.ytimg.com/vi/lG6HVrrXup8/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCZL9WCKQKfXCk22RI1GOjodeNvpQ',
    'NoCopyrightSounds',
    '4.8M',
    '4 months ago',
    'https://yt3.ggpht.com/ytc/AAUvwnhFuyxDVb5Ls5HDKyBdydj39h9pBkx5I1VhQ7UL5Q=s68-c-k-c0x00ffffff-no-rj',
    '4:08',
  ],
  5: [
    'Material UI Tutorial #3 - Buttons',
    'https://i.ytimg.com/vi/1at8XzyeEVA/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLCw-xgc4eCC4-GGXayg4IJ0_cYEWw',
    'The Net Ninja',
    '10,297',
    'Mar 16, 2021',
    'https://yt3.ggpht.com/ytc/AAUvwni-Wm0ZBDYJYFwySP2esxgc8s9mKiwmI3yJrmjlHQ=s88-c-k-c0x00ffffff-no-rj',
    '8:27',
  ],
  6: [
    'WhatsApp UI timelapse | Whatsapp UI clone | Flutter timelapse (Part 1)',
    'https://i.ytimg.com/vi/_qIXVlA9tyA/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDeZLRgXsB57MSCvLWReXTFaIHF_g',
    'DevBees',
    '184',
    'May 8, 2021',
    'https://yt3.ggpht.com/ytc/AAUvwngdpJTfdbXnkHMJ9vYEv7aEuZf-m---p2UqqI7I=s48-c-k-c0x00ffffff-no-rj',
    '4:06',
  ],
  7: [
    '27 EASY MAGIC TRICKS',
    'https://i.ytimg.com/vi/xqAoloAGlCE/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAgqxO-n16Ckkd4OwplPJmtnUqw4A',
    '5-Minute Crafts',
    '39,433,213',
    'Jan 18, 2019',
    'https://yt3.ggpht.com/ytc/AAUvwnicrG9RNUfo_lxIwy179qaAChmgaWrOs6Y4_r7CKg=s88-c-k-c0x00ffffff-no-rj',
    '17:53',
  ],
  8: [
    'Chat App - Light & Dark Theme UI Kit - Flutter',
    'https://i.ytimg.com/vi/0sTfmQMODqQ/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA9iwpEMpGfBWYsMSObPtpdCd6Y3A',
    'The Flutter Way',
    '13K',
    '4 weeks ago',
    'https://yt3.ggpht.com/ytc/AAUvwngOS8ETkWL7RrYwfXX2hMdJ7VjO-juYYl8F1OG1=s176-c-k-c0x00ffffff-no-rj',
    '4:48'
  ],
  9: [
    'Gym Boys | Comedy | Karikku',
    'https://i.ytimg.com/vi/b-U75D5d75s/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLBRL5smpDwBPNm7xmDoFXit6GC0xQ',
    'Karikku',
    '23M',
    '1 year ago',
    'https://yt3.ggpht.com/ytc/AAUvwnjipJKbPXIbI0KeW_o49gCuiHLaJZVdHrPn1WWeBw=s88-c-k-c0x00ffffff-no-rj',
    '12:35',
  ],
};

class HomeScreen extends StatelessWidget {
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
                itemCount: vidList.length,
                itemBuilder: (context, index) {
                  return Videos(
                    index: index,
                    title: vidList.values.elementAt(index).elementAt(0),
                    imgUrl: vidList.values.elementAt(index).elementAt(1),
                    name: vidList.values.elementAt(index).elementAt(2),
                    views: vidList.values.elementAt(index).elementAt(3),
                    uploadDate: vidList.values.elementAt(index).elementAt(4),
                    profilePic: vidList.values.elementAt(index).elementAt(5),
                    duration: vidList.values.elementAt(index).elementAt(6),
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
                                filter.elementAt(index),
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
                            label: filter.elementAt(index),
                            isSelected:
                                filter.elementAt(index) == 'All' ? true : false,
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
                    itemCount: filter.length,
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
                      Container(
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
                      Container(
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
                      Container(
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
                      Container(
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
                      Container(
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
    return Column(
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
        index == vidList.length - 1
            ? SizedBox(
                height: 60,
              )
            : SizedBox(
                height: 0,
              ),
      ],
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
