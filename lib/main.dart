import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded input(int j, Color k) {
    return Expanded(
      child: FlatButton(

        onPressed: (){
          playSound(j);
        },
        color: k,
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[

              input(1,Colors.red),
               input(2,Colors.deepOrange),
               input(3,Colors.redAccent),
               input(4,Colors.green),
               input(5,Colors.orange),
               input(6,Colors.yellow),
               input(7,Colors.yellowAccent),
               Container(
                 height:40.0,
                 padding: EdgeInsets.all(5),
                 child: Center(
                   child: Text(
                     '@shrawan',

                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                 ),
               ),
             ]
             ),
          ),
        ),
      );

  }
}
