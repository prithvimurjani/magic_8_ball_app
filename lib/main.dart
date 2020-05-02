import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );



class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(backgroundColor: Colors.blue[900],title: Text('Ask me anything'), centerTitle: true,),
      body: BallDynamic(

      ),
    );
  }
}


class BallDynamic extends StatefulWidget {
  @override
  _BallDynamicState createState() => _BallDynamicState();
}

class _BallDynamicState extends State<BallDynamic> {

  int ballNumber = 1;



  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            
            ballNumber = Random().nextInt(5)+1;
            print('I got clicked');
          });

        },
          child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

