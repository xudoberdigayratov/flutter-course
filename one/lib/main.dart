import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     int son = 0;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text("Salom dunyo"),
//       ),
//       body: Container(
//         color: Colors.red,
//         child: Center(
//             child: MaterialButton(
//           onPressed: () {},
//           child: Text("sd"),
//           color: Colors.blue,
//         )),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget { // Qayta tizsh uchun SateFulWidegt
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Salom Dunyo"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            number = number + 1;
            setState(() {});
          },
          child: Text("$number"), color: Colors.red,
        ),
      ),
    );
  }
}
