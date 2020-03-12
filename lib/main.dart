import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Diceeeeee'),
          backgroundColor: Colors.yellow,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                child: Image.asset(
                  'images/dice1.png',
                ),
                onPressed: () {
                  print('left Button Pressed');
                }),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image(
                image: AssetImage(
                  'images/dice1.png',
                ),
              ),
              onPressed: () {
                print('Right Button Pressed');
              },
            ),
          )
        ],
      ),
    );
  }
}
