import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(), debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Project"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment:  CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              FloatingActionButton(onPressed: (){}, backgroundColor: Colors.red,),
              FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green,)
            ],
          ),
          FloatingActionButton(onPressed: (){}, backgroundColor: Colors.red,),
          FloatingActionButton(onPressed: (){}, backgroundColor: Colors.green,)
        ],
      ),),
    );
  }

}
