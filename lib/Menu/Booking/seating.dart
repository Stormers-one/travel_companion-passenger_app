import 'package:flutter/material.dart';
import 'package:o_k/shared/drawer.dart';

class Seating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand-Medium'),
      title: 'Seating',
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          elevation: 0,
          title: Text('Seating'),
        ),
        drawer: DrawerBuild(),
        body: new GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                      200.0,
                ),
                padding: const EdgeInsets.all(8.0),
                color: Colors.blue[600],
                alignment: Alignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
