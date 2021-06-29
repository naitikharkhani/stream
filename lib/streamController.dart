import 'dart:async';

class StreamBlock{

  static final  StreamBlock _streamBlock=StreamBlock._internal();


  factory StreamBlock(){
    return _streamBlock;
  }

  StreamBlock._internal();

 StreamController streamController=StreamController<String>();


 addData()async{
   for(int i=0;i<15;i++){
     await Future.delayed(Duration(seconds: 1));

     streamController.sink.add("i ${i}");
   }
 }



}