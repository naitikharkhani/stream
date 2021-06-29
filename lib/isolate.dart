import 'package:flutter/material.dart';


class IsolateDemo extends StatefulWidget {
  @override
  _IsolateDemoState createState() => _IsolateDemoState();
}

class _IsolateDemoState extends State<IsolateDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Isolate Demo"),
      ),
      body: Container(

        child: Column(
          children: [

            TextField(),
            Container(
              child: Text("Click"),
            )
          ],
        ),
      ),
    );
  }
}
