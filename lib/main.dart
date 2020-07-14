import 'package:flutter/material.dart';
import 'package:stepo/stepo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Stepo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBE0E6),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Stepo(
          key: UniqueKey(),
          backgroundColor: Color(0xFFC41A3B), // Optional
          textColor: Color(0xFFFBE0E6), // Optional
          iconColor: Color(0xFFFBE0E6), // Optional
          fontSize: 28.0, // Optional
          iconSize: 28.0, // Optional
          initialCounter: 10, // Optional
          lowerBound: 5, // Optional
          upperBound: 15, // Optional
          width: 225.0, // Optional
          animationDuration: Duration(milliseconds: 400), // Optional
          style: Style.vertical,
          onIncrementClicked: (_counter) {
             // Optional
            print('Increment $_counter');
          },
          onDecrementClicked: (_counter) {
             // Optional
            print('Decrement $_counter');
          },
        ),
      ),
    );
  }
}
