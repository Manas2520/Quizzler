import 'package:flutter/material.dart';
import 'body.dart';

void main() {
  runApp(quizzler());
}

class quizzler extends StatelessWidget {
  const quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            backgroundColor: Colors.green[800],
            title: Center(
              child: Text('Quizzler'),
            ),
          ),
          body: quizzler_body(),
        ),
      ),
    );
  }
}
