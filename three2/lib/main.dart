import 'package:flutter/material.dart';
import 'package:three2/book_page.dart';
import 'package:three2/camera_page.dart';
import 'package:three2/home_page.dart';
import 'package:three2/search_page.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    BookPage(),
    CameraPage()
  ];


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BottomNavigationBar")),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.blue),
        unselectedLabelStyle: TextStyle(color: Colors.amber),
        items:  [
        BottomNavigationBarItem(icon: Icon(Icons.home,color:selectedIndex==0?Colors.red:Colors.black,), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Book'),
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera')
      ],
      onTap: (index){
          setState(() {
            selectedIndex=index;
          });
      },
      ),
    );
  }
}
