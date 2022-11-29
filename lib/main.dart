import 'package:flutter/material.dart';
import 'package:sutt_task/secondScreen.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String status='Pending';
  bool show = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Orders',
          style: TextStyle(color: Color.fromRGBO(255 , 255, 255, 1),fontSize: 48)),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>secondScreen()));
            },
            child:Card(
                margin: const EdgeInsets.all(16.00),
                color: Color.fromRGBO(65, 66, 68, 1),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Order : #12A321',
                            style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1))),
                            Container(
                            child: Center(
                              child: Column(
                                children: [
                                  Text('\n'),
                                  Text('$status',style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1))),

                                  RichText(text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "> 2 lbs ", style: TextStyle(fontSize: 20)
                                      ),
                                      WidgetSpan(
                                        child: Icon(Icons.card_giftcard, size: 20),
                                      ),
                                    ],
                                  ),),
                                  RichText(text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "X 8 ",style: TextStyle(fontSize: 20)
                                      ),
                                      WidgetSpan(
                                        child: Icon(Icons.shopping_basket_rounded, size: 20),
                                      ),
                                    ],
                                  ),),
                                  Text('\n'),

                                ],
                              ),
                            )
                            ),
                            Text('USA - CA', style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1)))
                          ],
                        )
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Image(
                            image: AssetImage('assets/cardimg.jpeg'),
                            height: 220,
                            width: 150,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Visibility(
                                visible: show,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    status="Rejected";
                                    show=false;
                                    print('rejects');
                                  });

                                },
                                    child: const Icon(
                                        Icons.close,
                                      color: Color.fromRGBO(62,181,22,1),
                                    )),
                              ),
                              Visibility(
                                visible: show,
                                child: TextButton(onPressed: () {
                                  setState(() {
                                    status="Accepted";
                                    show=false;

                                  });
                                },
                                    child: const Icon(
                                        Icons.check_circle,
                                        color: Color.fromRGBO(62,181,22,1)
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
            )
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>secondScreen()));
              },
              child:Card(
                  margin: const EdgeInsets.all(16.00),
                  color: Color.fromRGBO(65, 66, 68, 1),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Order : #12A321',
                                  style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1))),
                              Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text('\n'),
                                        Text('$status',style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1))),

                                        RichText(text: const TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "> 2 lbs ", style: TextStyle(fontSize: 20)
                                            ),
                                            WidgetSpan(
                                              child: Icon(Icons.card_giftcard, size: 20),
                                            ),
                                          ],
                                        ),),
                                        RichText(text: const TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "X 8 ",style: TextStyle(fontSize: 20)
                                            ),
                                            WidgetSpan(
                                              child: Icon(Icons.shopping_basket_rounded, size: 20),
                                            ),
                                          ],
                                        ),),
                                        Text('\n'),

                                      ],
                                    ),
                                  )
                              ),
                              Text('USA - CA', style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1)))
                            ],
                          )
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Image(
                              image: AssetImage('assets/cardimg.jpeg'),
                              height: 220,
                              width: 150,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Visibility(
                                  visible: show,
                                  child: TextButton(onPressed: () {
                                    setState(() {
                                      status="Rejected";
                                      show=false;
                                      print('rejects');
                                    });

                                  },
                                      child: const Icon(
                                        Icons.close,
                                        color: Color.fromRGBO(62,181,22,1),
                                      )),
                                ),
                                Visibility(
                                  visible: show,
                                  child: TextButton(onPressed: () {
                                    setState(() {
                                      status="Accepted";
                                      show=false;

                                    });
                                  },
                                      child: const Icon(
                                          Icons.check_circle,
                                          color: Color.fromRGBO(62,181,22,1)
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
              )
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>secondScreen()));
              },
              child:Card(
                  margin: const EdgeInsets.all(16.00),
                  color: Color.fromRGBO(65, 66, 68, 1),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Order : #12A321',
                                  style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1))),
                              Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text('\n'),
                                        Text('$status',style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1))),

                                        RichText(text: const TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "> 2 lbs ", style: TextStyle(fontSize: 20)
                                            ),
                                            WidgetSpan(
                                              child: Icon(Icons.card_giftcard, size: 20),
                                            ),
                                          ],
                                        ),),
                                        RichText(text: const TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "X 8 ",style: TextStyle(fontSize: 20)
                                            ),
                                            WidgetSpan(
                                              child: Icon(Icons.shopping_basket_rounded, size: 20),
                                            ),
                                          ],
                                        ),),
                                        Text('\n'),

                                      ],
                                    ),
                                  )
                              ),
                              Text('USA - CA', style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1)))
                            ],
                          )
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Image(
                              image: AssetImage('assets/cardimg.jpeg'),
                              height: 220,
                              width: 150,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Visibility(
                                  visible: show,
                                  child: TextButton(onPressed: () {
                                    setState(() {
                                      status="Rejected";
                                      show=false;
                                      print('rejects');
                                    });

                                  },
                                      child: const Icon(
                                        Icons.close,
                                        color: Color.fromRGBO(62,181,22,1),
                                      )),
                                ),
                                Visibility(
                                  visible: show,
                                  child: TextButton(onPressed: () {
                                    setState(() {
                                      status="Accepted";
                                      show=false;

                                    });
                                  },
                                      child: const Icon(
                                          Icons.check_circle,
                                          color: Color.fromRGBO(62,181,22,1)
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
              )
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>secondScreen()));
              },
              child:Card(
                  margin: const EdgeInsets.all(16.00),
                  color: Color.fromRGBO(65, 66, 68, 1),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Order : #12A321',
                                  style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1))),
                              Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text('\n'),
                                        Text('$status',style: TextStyle(fontSize: 20,color: Color.fromRGBO(255, 255, 255, 1))),

                                        RichText(text: const TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "> 2 lbs ", style: TextStyle(fontSize: 20)
                                            ),
                                            WidgetSpan(
                                              child: Icon(Icons.card_giftcard, size: 20),
                                            ),
                                          ],
                                        ),),
                                        RichText(text: const TextSpan(
                                          children: [
                                            TextSpan(
                                                text: "X 8 ",style: TextStyle(fontSize: 20)
                                            ),
                                            WidgetSpan(
                                              child: Icon(Icons.shopping_basket_rounded, size: 20),
                                            ),
                                          ],
                                        ),),
                                        Text('\n'),

                                      ],
                                    ),
                                  )
                              ),
                              Text('USA - CA', style: TextStyle(fontSize:12,color: Color.fromRGBO(62,181,22,1)))
                            ],
                          )
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Image(
                              image: AssetImage('assets/cardimg.jpeg'),
                              height: 220,
                              width: 150,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Visibility(
                                  visible: show,
                                  child: TextButton(onPressed: () {
                                    setState(() {
                                      status="Rejected";
                                      show=false;
                                      print('rejects');
                                    });

                                  },
                                      child: const Icon(
                                        Icons.close,
                                        color: Color.fromRGBO(62,181,22,1),
                                      )),
                                ),
                                Visibility(
                                  visible: show,
                                  child: TextButton(onPressed: () {
                                    setState(() {
                                      status="Accepted";
                                      show=false;

                                    });
                                  },
                                      child: const Icon(
                                          Icons.check_circle,
                                          color: Color.fromRGBO(62,181,22,1)
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
              )
          )
        ]
      )
    );
  }
}
