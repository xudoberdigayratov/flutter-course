import 'package:flutter/material.dart';
import 'package:three/home.dart';
import 'package:three/seach_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp1(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Three project"),
            backgroundColor: Colors.green,
            bottom: TabBar(tabs: [Icon(Icons.home), Icon(Icons.search)]),
          ),
          body: TabBarView(
            children: [HomePage(), SearchPage()],
          ),
        ));
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Three project'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          TabBar(controller: _tabController,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black87,
              labelPadding: EdgeInsets.zero,
              tabs: [
            Expanded(
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Icon(
                  Icons.home,
                  // color: Colors.red,
                ),
                color: Colors.black12,
              ),
            ),
            Expanded(
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Icon(
                  Icons.search,
                  // color: Colors.red,
                ),
                color: Colors.black12,
              ),

            )
          ]),
          Expanded(child: TabBarView(
              controller: _tabController, children: [HomePage(), SearchPage()]))
        ],
      ),
    );
  }
}
