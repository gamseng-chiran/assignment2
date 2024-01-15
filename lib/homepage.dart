import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int SneakerCount = 1;
  int sneakerPrice = 34;
  int totalSneaker = 34;
  int totalprice = 81;
  int PantCount = 1;
  int pantPrice = 22;
  int totalPant = 22;
  int PulloverCount = 1;
  int pulloverPrice = 25;
  int totalPullover = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 11.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.search),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'My Bag',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Card(
                  child: ListTile(
                    leading: Container(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Image.asset('assets/images/sneakers.jpg')),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sneaker',
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Color:',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black26)),
                            TextSpan(
                                text: 'Black ',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                            TextSpan(
                                text: ' Size:',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black26)),
                            TextSpan(
                                text: '43',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black))
                          ]),
                        ),
                        SizedBox(height:4),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    shape: CircleBorder(),
                                    elevation: 5),
                                onPressed: () {
                                  setState(() {
                                    if (SneakerCount > 0) {
                                      SneakerCount--;
                                      sneakerPrice = sneakerPrice - 34;
                                      totalSneaker = sneakerPrice;
                                      totalprice = totalPullover+ totalPant+ sneakerPrice;
                                    }
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black38),
                                )),
                            Text(
                              " $SneakerCount ",
                              style: TextStyle(fontSize: 21),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    shape: CircleBorder(),
                                    elevation: 5),
                                onPressed: () {
                                  setState(() {
                                    SneakerCount++;
                                    sneakerPrice = sneakerPrice + 34;
                                    totalSneaker = sneakerPrice;
                                    totalprice = totalPullover+ totalPant + totalSneaker;
                                    if (SneakerCount == 5) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Congratulations'),
                                              content: Text(
                                                  'You have added 5 sneakers'),
                                              actions: [
                                                TextButton(
                                                    onPressed: (() {
                                                      Navigator.of(context)
                                                          .pop();
                                                    }),
                                                    child: Text('OK'))
                                              ],
                                            );
                                          });
                                    }
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black38),
                                )),
                          ],
                        )
                      ],
                    ),
                    trailing: Column(children: [
                      Icon(Icons.more_vert),
                      Spacer(),
                      Text('$sneakerPrice \$')
                    ]),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Container(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Image.asset('assets/images/pant.jpg')),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pant',
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Color:',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black26)),
                            TextSpan(
                                text: 'Black ',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                            TextSpan(
                                text: ' Size:',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black26)),
                            TextSpan(
                                text: '43',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black))
                          ]),
                        ),
                        SizedBox(height:4),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    shape: CircleBorder(),
                                    elevation: 5),
                                onPressed: () {
                                  setState(() {
                                    if (PantCount > 0) {
                                      PantCount--;
                                      pantPrice = pantPrice - 22;
                                      totalPant = pantPrice;
                                      totalprice = totalPullover+ totalPant + totalSneaker;
                                    }
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black38),
                                )),
                            Text(
                              " $PantCount ",
                              style: TextStyle(fontSize: 21),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    shape: CircleBorder(),
                                    elevation: 5),
                                onPressed: () {
                                  setState(() {
                                    PantCount++;
                                    pantPrice = pantPrice + 22;
                                    totalPant = pantPrice;
                                    totalprice = totalPullover+ totalPant + totalSneaker;
                                    if (PantCount == 5) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Congratulations'),
                                              content: Text(
                                                  'You have added 5 pants'),
                                              actions: [
                                                TextButton(
                                                    onPressed: (() {
                                                      Navigator.of(context)
                                                          .pop();
                                                    }),
                                                    child: Text('OK'))
                                              ],
                                            );
                                          });
                                    }
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black38),
                                )),
                          ],
                        )
                      ],
                    ),
                    trailing: Column(children: [
                      Icon(Icons.more_vert),
                      Spacer(),
                      Text('$pantPrice \$')
                    ]),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Container(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Image.asset('assets/images/pullover.jpg')),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pullover',
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Color:',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black26)),
                            TextSpan(
                                text: 'Black ',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black)),
                            TextSpan(
                                text: ' Size:',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black26)),
                            TextSpan(
                                text: '43',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black))
                          ]),
                        ),
                        SizedBox(height:4),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    shape: CircleBorder(),
                                    elevation: 5),
                                onPressed: () {
                                  setState(() {
                                    if (PulloverCount > 0) {
                                      PulloverCount--;
                                      pulloverPrice = pulloverPrice - 25;
                                      totalPullover = pulloverPrice;
                                      totalprice = totalPullover+ totalPant + totalSneaker;
                                    }
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black38),
                                )),
                            Text(
                              " $PulloverCount ",
                              style: TextStyle(fontSize: 21),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white60,
                                    shape: CircleBorder(),
                                    elevation: 5),
                                onPressed: () {
                                  setState(() {
                                    PulloverCount++;
                                    pulloverPrice = pulloverPrice + 25;
                                    totalPullover = pulloverPrice;
                                    totalprice = totalPullover+ totalPant + totalSneaker;
                                    if (PulloverCount == 5) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Congratulations'),
                                              content: Text(
                                                  'You have added 5 pullover'),
                                              actions: [
                                                TextButton(
                                                    onPressed: (() {
                                                      Navigator.of(context)
                                                          .pop();
                                                    }),
                                                    child: Text('OK'))
                                              ],
                                            );
                                          });
                                    }
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.black38),
                                )),
                          ],
                        )
                      ],
                    ),
                    trailing: Column(children: [
                      Icon(Icons.more_vert),
                      Spacer(),
                      Text('$pulloverPrice')
                    ]),
                  ),
                ),
              ]),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.2,
              right: 0,
              left: 0,
              bottom: 50,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Total Amount', style: TextStyle(color: Colors.black54),),
                    Text('$totalprice', style: TextStyle(fontWeight: FontWeight.bold),)
                  ],),
                  Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(31)),
                      child: InkWell(
                        onTap: (() {
                          final snackBar = SnackBar(
                            content: Text(
                              'Congratulations ....',
                              style: TextStyle(color: Colors.red),
                            ),
                            duration: Duration(seconds: 2),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }),
                        child: Container(
                          child: Center(
                              child: Text(
                            'Check out',
                            style: TextStyle(fontSize: 21),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
