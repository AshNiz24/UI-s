import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CryptoData> chatData = [
    CryptoData(5.00, 150),
    CryptoData(6.00, 250),
    CryptoData(7.00, 50),
    CryptoData(8.00, 550),
    CryptoData(9.00, 800),
    CryptoData(10.00, 300),
    CryptoData(11.00, 300),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.yellow.shade300,
                    Colors.orangeAccent.shade200,
                    Colors.pinkAccent.shade100,
                  ],
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange,
                          offset: Offset(3, 2),
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Rs 75000',
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Container(
                            child: SfCartesianChart(
                              primaryXAxis: NumericAxis(
                                majorGridLines: MajorGridLines(
                                  color: Colors.transparent,
                                ),
                              ),
                              primaryYAxis: NumericAxis(
                                majorGridLines: MajorGridLines(
                                  color: Colors.transparent,
                                ),
                              ),
                              series: <ChartSeries>[
                                SplineAreaSeries<CryptoData, double>(
                                  animationDuration: 1000,
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.deepOrange.withOpacity(0.7),
                                      Colors.yellow.shade300.withOpacity(0.8),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  dataLabelSettings: DataLabelSettings(
                                    color: Colors.transparent,
                                  ),
                                  dataSource: chatData,
                                  splineType: SplineType.cardinal,
                                  cardinalSplineTension: 0.9,
                                  xValueMapper: (CryptoData crypto, _) =>
                                      crypto.time,
                                  yValueMapper: (CryptoData crypto, _) =>
                                      crypto.rate,
                                ),
                              ],
                              enableAxisAnimation: true,
                              borderWidth: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.shade300,
                              offset: Offset(3, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Crypto',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Rs',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CryptoVal(
                              color: Colors.purpleAccent,
                              coin: 'BTC',
                              val: '4,333,540',
                            ),
                            HDivider(),
                            CryptoVal(
                              color: Colors.greenAccent,
                              coin: 'ETH',
                              val: '151,382',
                            ),
                            HDivider(),
                            CryptoVal(
                              color: Colors.lightBlueAccent,
                              coin: 'BNB',
                              val: '24,473',
                            ),
                            HDivider(),
                            CryptoVal(
                              color: Colors.greenAccent,
                              coin: 'LTC',
                              val: '15,135',
                            ),
                            HDivider(),
                            CryptoVal(
                              color: Colors.purpleAccent,
                              coin: 'DOT',
                              val: '3,219',
                            ),
                            HDivider(),
                            CryptoVal(
                              color: Colors.greenAccent,
                              coin: 'LINK',
                              val: '3,219',
                            ),
                            HDivider(),
                            CryptoVal(
                              color: Colors.lightBlueAccent,
                              coin: 'ADA',
                              val: '88.30',
                            ),
                            HDivider(),
                            CryptoVal(
                              color: Colors.greenAccent,
                              coin: 'USDT',
                              val: '73.48',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.launch,
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.38,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink.shade400,
                                  offset: Offset(3, 2),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Coins Purchased',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Colors.pink,
                                ),
                                CryptoPurchased(
                                  color: Colors.purpleAccent,
                                  coin: 'BTC',
                                  number: '0.005',
                                ),
                                HDivider(),
                                CryptoPurchased(
                                  color: Colors.greenAccent,
                                  coin: 'ETH',
                                  number: '0.08',
                                ),
                                HDivider(),
                                CryptoPurchased(
                                  color: Colors.lightBlueAccent,
                                  coin: 'LTC',
                                  number: '0.3',
                                ),
                                HDivider(),
                                CryptoPurchased(
                                  color: Colors.greenAccent,
                                  coin: 'DOT',
                                  number: '5',
                                ),
                                HDivider(),
                                CryptoPurchased(
                                  color: Colors.purpleAccent,
                                  coin: 'ADA',
                                  number: '20',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.launch,
                                        color: Colors.lightBlueAccent,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.pink.shade400,
                                  offset: Offset(3, 2),
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.save_alt_rounded,
                                      color: Colors.purpleAccent,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'BUY',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage('images/upload.png'),
                                      color: Colors.lightBlueAccent,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'SELL',
                                      style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CryptoData {
  CryptoData(this.time, this.rate);
  final double time;
  final double rate;
}

class CryptoVal extends StatelessWidget {
  final Color color;
  final String coin;
  final String val;
  CryptoVal({this.color, this.coin, this.val});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              CupertinoIcons.bitcoin_circle,
              size: 18,
              color: color,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              coin,
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 16,
              ),
            )
          ],
        ),
        Text(
          val,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class HDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.75,
      color: Colors.orange,
    );
  }
}

class CryptoPurchased extends StatelessWidget {
  final Color color;
  final String coin;
  final String number;
  CryptoPurchased({this.color, this.coin, this.number});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              CupertinoIcons.bitcoin_circle,
              size: 18,
              color: color,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              coin,
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Text(
          'x$number',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
