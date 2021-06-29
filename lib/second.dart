import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_isolatedemo/streamController.dart';


class StreamDemo1 extends StatefulWidget {
  @override
  _StreamDemo1State createState() => _StreamDemo1State();
}
class _StreamDemo1State extends State<StreamDemo1> {




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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.bl[100],
        child: StreamBuilder(
            stream:StreamBlock().streamController.stream,
            builder: (context, snapshot) {
              return Center(child: Container(child: Text("data is ==> ${snapshot.data}")));
            }
        ),
      ),
    );
  }
}
