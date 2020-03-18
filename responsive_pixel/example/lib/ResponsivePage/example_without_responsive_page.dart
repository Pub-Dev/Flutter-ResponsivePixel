import 'package:flutter/material.dart';

class ExampleWithoutResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          width: 480,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 480,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    Text('Responsive with limit min and max', style: TextStyle(fontSize: 20, color: Colors.white ), textAlign: TextAlign.center,),
                    Text('Example(64)', style: TextStyle(fontSize: 64,)),
                    Text('Example(32)', style: TextStyle(fontSize: 32,)),
                    Text('Example(24)', style: TextStyle(fontSize: 24,)),
                    Text('Example(16)', style: TextStyle(fontSize: 16,)),
                    Text('Example(8)', style: TextStyle(fontSize: 8),)
                  ],
                ),
              ),
              Container(
                width: 480,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Text('Responsive fixed', style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text('Example(64)', style: TextStyle(fontSize: 64,)),
                    Text('Example(32)', style: TextStyle(fontSize: 32,)),
                    Text('Example(24)', style: TextStyle(fontSize: 24,)),
                    Text('Example(16)', style: TextStyle(fontSize: 16,)),
                    Text('Example(8)', style: TextStyle(fontSize: 8,))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}