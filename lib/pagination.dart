import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  
  List myList;
  int _currentMax=15;

  ScrollController _scrollController=ScrollController();
  
  @override
  void initState() {
    print("hello2");
    myList= List.generate(15, (index) => "item: ${index+1}" );
    _scrollController.addListener(() {
      print("hello1");
      if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent){
        loadMoreData();
      }
    });
  }

  loadMoreData(){
    Future.delayed(Duration(seconds: 3));
    print("hello");
    for(int i=_currentMax; i<_currentMax+10;i++){
      myList.add("item: ${i+1}");
    }
    _currentMax=_currentMax+10;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagination Demo"),
      ),
      body: ListView.builder(
        primary: false,
        controller: _scrollController,
        shrinkWrap: true,
        itemExtent: 80,
        itemCount: myList.length+1,
          itemBuilder:(context , index){
          if(index==myList.length){
            return CupertinoActivityIndicator();
          }
        return ListTile(
          title: Text(myList[index]),
        );

      }),
    );
  }
}
