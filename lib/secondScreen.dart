import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class secondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Details'), backgroundColor: Color.fromRGBO(0, 0, 0, 1)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Image(image: AssetImage('assets/cardimg.jpeg')),
          CircularPercentIndicator(
            radius: 55.0,
            lineWidth: 25,
            percent: 0.69,
            progressColor:  Color.fromRGBO(62,181,22,1),
            center: Text('69%',style: TextStyle(fontSize:20,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.bold)),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children:  [
                    Text('Date',style: TextStyle(fontSize:20,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.bold)),
                    Text('\n'),
                    Column(
                      children: [
                        Text('29-11-2022',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                        Text('22-11-2022',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                        Text('12-10-2022',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                        Text('23-3-2002',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                        Text('06-09-2021',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text('Quantity',style: TextStyle(fontSize:20,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.bold)),
                    Text('\n'),
                    Text('420',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('69',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('69420',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('42069',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('6969',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                  ],
                ),
                Column(
                  children: const [
                    Text('Progress',style: TextStyle(fontSize:20,color: Color.fromRGBO(255,255,255,1),fontWeight: FontWeight.bold)),
                    Text('\n'),
                    Text('53',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('1',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('1',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('22',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                    Text('2',style: TextStyle(fontSize:12,color: Color.fromRGBO(255,255,255,1))),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}