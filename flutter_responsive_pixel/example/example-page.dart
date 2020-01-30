import 'package:flutter/material.dart';

class ExampleWithoutResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                Text('Example(64)', style: TextStyle(fontSize: 64),),
                Text('Example(32)', style: TextStyle(fontSize: 32),),
                Text('Example(16)', style: TextStyle(fontSize: 16),),
                Text('Example(12)', style: TextStyle(fontSize: 12),),
                Text('Example(8)', style: TextStyle(fontSize: 8),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              left: 20,
            ),
            padding: EdgeInsets.all(30),
            color: Colors.amber,
            child: Column(
              children: <Widget>[
                Text('Example(64)', style: TextStyle(fontSize: 64),),
                Text('Example(32)', style: TextStyle(fontSize: 32),),
                Text('Example(16)', style: TextStyle(fontSize: 16),),
                Text('Example(12)', style: TextStyle(fontSize: 12),),
                Text('Example(8)', style: TextStyle(fontSize: 8),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}