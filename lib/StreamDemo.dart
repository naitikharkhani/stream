import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_isolatedemo/second.dart';
import 'package:flutter_isolatedemo/streamController.dart';


class StreamDemo extends StatefulWidget {
  @override
  _StreamDemoState createState() => _StreamDemoState();
}
class _StreamDemoState extends State<StreamDemo> {




  @override
  void initState() {
    StreamBlock().addData();
    super.initState();
  }
@override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [

          GestureDetector(
            child: Container(
              color: Colors.red[100],
            child: StreamBuilder(
              stream:StreamBlock().streamController.stream,
              builder: (context, snapshot) {
                return Center(child: Container(child: Text("data is ==> ${snapshot.data}")));
              }
            ),
            ),
          ),


          FlatButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StreamDemo1()));
          }, child: Text("Click")),


          Container(
            color: Colors.blue[100],
            child: StreamBuilder(
                stream:StreamBlock().streamController.stream,
                builder: (context, snapshot) {
                  return Center(child: Container(child: Text("data is ==> ${snapshot.data}")));
                }
            ),
          ),


        ],
      ),
    );
  }
}
