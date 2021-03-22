import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessCardUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: CustomPaint(
            painter: CurvePainter(),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.09,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.08,
                      backgroundImage: AssetImage('images/user2.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Abby Williams',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 1.15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Flutter developer',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(2, 1, 1, 3),
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.shade400,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          CupertinoIcons.phone,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.redAccent.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          CupertinoIcons.mail,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1.15,
                  indent: MediaQuery.of(context).size.width * 0.1,
                  endIndent: MediaQuery.of(context).size.width * 0.1,
                  color: Colors.grey.shade400,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                      height: 20,
                    ),
                    Text(
                      'OVERVIEW',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1.15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: EdgeInsets.fromLTRB(20, 3, 1, 3),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PHONE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              letterSpacing: 1.15,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '(123) 456 7890',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              letterSpacing: 1.1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.32,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.07,
                        height: MediaQuery.of(context).size.width * 0.07,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.greenAccent.shade400,
                        ),
                        child: Icon(
                          CupertinoIcons.phone,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: EdgeInsets.fromLTRB(20, 3, 1, 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.grey.shade100,
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'EMAIL',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.15,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'abbywill@example.com',
                              style: TextStyle(
                                color: Colors.grey,
                                letterSpacing: 1.0,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.19,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.07,
                          height: MediaQuery.of(context).size.width * 0.07,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.redAccent),
                          child: Icon(
                            CupertinoIcons.mail,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: EdgeInsets.fromLTRB(20, 3, 1, 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.grey.shade100,
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'WEBSITE',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.15,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'www.abbywill.com',
                              style: TextStyle(
                                color: Colors.grey,
                                letterSpacing: 1.0,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.27,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.07,
                          height: MediaQuery.of(context).size.width * 0.07,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple.shade300,
                          ),
                          child: Icon(
                            CupertinoIcons.globe,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  indent: MediaQuery.of(context).size.width * 0.1,
                  endIndent: MediaQuery.of(context).size.width * 0.1,
                  color: Colors.grey.shade400,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.12,
                      height: 20,
                    ),
                    Text(
                      'SOCIAL',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1.15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.width * 0.09,
                        child: Image(
                          image: AssetImage('images/fb1.png'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Image(
                          image: AssetImage('images/twitter.png'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Image(
                          image: AssetImage('images/linkedIn.png'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Image(
                          image: AssetImage('images/insta-logo.jfif'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Image(
                          image: AssetImage('images/git.png'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.shader = LinearGradient(
            colors: [Color(0xff8160c7), Color(0xff8f77dc), Color(0xff8f67bc)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)
        .createShader(
      Rect.fromLTRB(
        size.width * 0.15,
        size.height * 0.15,
        size.width,
        size.height * 0.1,
      ),
    );
    var path = Path();
    path.moveTo(0, size.height * 0.15);
    path.quadraticBezierTo(
        size.width * 0.48, size.height * 0.38, size.width, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.38, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
