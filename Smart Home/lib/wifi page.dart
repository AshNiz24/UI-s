import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WiFiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.grey.shade600,
            ),
            onPressed: () {},
          ),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.grey.shade600,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Netgear WiFi Router',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          shadows: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(2, 3),
                              blurRadius: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 35,
                    bottom: 10,
                  ),
                  child: Text(
                    'Your network is online and everything looks good',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    children: [
                      NetSpeedDetails(
                        color: Colors.lightBlue.shade500,
                        speed: '69',
                        label: 'Download\nSpeed',
                        icon: Icons.arrow_downward_rounded,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      NetSpeedDetails(
                        color: Colors.deepPurpleAccent.shade400,
                        speed: '12',
                        label: 'Upload\nSpeed',
                        icon: Icons.arrow_upward_rounded,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    bottom: 20,
                  ),
                  child: Text(
                    '4 devices connected',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Device(
                  icon: Icons.phone_iphone,
                  name: 'My iphone',
                  ghz: 5,
                  time: '2h',
                  speed: 6,
                ),
                HDivider(),
                Device(
                  icon: Icons.phone_iphone,
                  name: 'Amy\'s iphone',
                  ghz: 5,
                  time: '4h',
                  speed: 4,
                ),
                HDivider(),
                Device(
                  icon: Icons.laptop,
                  name: 'MacBook',
                  ghz: 2.4,
                  time: '7h',
                  speed: 7,
                ),
                HDivider(),
                Device(
                  icon: Icons.desktop_mac_outlined,
                  name: 'iMac',
                  ghz: 2.4,
                  time: '03/17 16:20',
                  speed: 9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NetSpeedDetails extends StatelessWidget {
  final String speed;
  final String label;
  final IconData icon;
  final Color color;
  NetSpeedDetails({this.color, this.speed, this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          top: 10,
        ),
        width: MediaQuery.of(context).size.width * 0.43,
        height: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$speed Mbps',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Icon(
                      icon,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Device extends StatelessWidget {
  final IconData icon;
  final String name;
  final double ghz;
  final String time;
  final double speed;
  Device({this.icon, this.speed, this.time, this.name, this.ghz});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          children: [
            Container(
              width: 42,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xffebf1ff),
                borderRadius: BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              child: Icon(
                icon,
                color: Color(0xff4c82ff),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.53,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.05,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${ghz.compareTo(ghz.round()) == 0 ? ghz.round() : ghz}GHz, $time ago',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              CupertinoIcons.triangle_fill,
              color: Colors.lightGreenAccent.shade700,
              size: 8,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
                '${speed.compareTo(speed.round()) == 0 ? speed.round() : speed}Mbps'),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.signal_cellular_alt,
              color: Colors.lightGreenAccent.shade700,
            ),
          ],
        ),
      ),
    );
  }
}

class HDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: MediaQuery.of(context).size.width * 0.18,
      endIndent: MediaQuery.of(context).size.width * 0.05,
      color: Colors.grey.shade300,
      thickness: 1,
      height: 40,
    );
  }
}
