import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back_outlined,
          ),
          title: Text("Flutter Text Creation"),
          actions: [
            Icon(
              Icons.logout_outlined,
            )
          ],
        ),
        body: Center(
            child: Container(
          height: 200,
          width: 300,
          color: Colors.lightGreen,
          child: Text(
            'This is my first flutter text program',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        )),
      ),
    );
  }
}
