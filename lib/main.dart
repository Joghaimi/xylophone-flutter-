import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSong(var i){
    final player = AudioCache();
    player.play('note$i.wav');

  }
  Widget buidKey({Color color,int Sound }){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSong(Sound);
        },
        child:Row() ,
        color: color,
//                    padding: ,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buidKey(color:Colors.orange,Sound :1),
              buidKey(color:Colors.teal,Sound :2),
              buidKey(color:Colors.red,Sound :3),
              buidKey(color:Colors.yellow,Sound :4),
              buidKey(color:Colors.green,Sound :5),
              buidKey(color:Colors.purple,Sound :6),
              buidKey(color:Colors.blue,Sound :7),


            ],
          ),
        ),
      ),
    );
  }
}
