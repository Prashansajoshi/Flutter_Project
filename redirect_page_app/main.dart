import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/forth': (context) => ForthPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  // var myText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 16,
        leading: Icon(
          Icons.home_outlined,
        ),
        title: Text('TO DO'),
        centerTitle: true,
        actions: [Icon(Icons.view_headline_outlined)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              //controller: myText,
              decoration: InputDecoration(
                labelText: 'Enter your text',
                prefixIcon: Icon(Icons.text_fields),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text(
              'Go to Second Page',
              style: TextStyle(fontSize: 20),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.green),
              overlayColor: MaterialStateProperty.all(Colors.red),
              minimumSize: MaterialStateProperty.all(const Size(300, 40)),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text(
              'Go to Third Page',
              style: TextStyle(fontSize: 20),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.green),
              overlayColor: MaterialStateProperty.all(Colors.red),
              minimumSize: MaterialStateProperty.all(const Size(300, 40)),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text(
              'Go to Forth Page',
              style: TextStyle(fontSize: 20),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.green),
              overlayColor: MaterialStateProperty.all(Colors.red),
              minimumSize: MaterialStateProperty.all(const Size(300, 40)),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/forth');
            },
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text('This is the second page'),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Text('This is the third page'),
      ),
    );
  }
}

class ForthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forth Page'),
      ),
      body: Center(
        child: Text('This is the Forth page'),
      ),
    );
  }
}
