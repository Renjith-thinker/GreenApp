import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  double ratio = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Text("Green App"),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 60.2,
            elevation: 0.00,
            backgroundColor: Colors.green,
          ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: Text('Import from gallery')),
              SizedBox(height: 100.0 * ratio),
              ElevatedButton(onPressed: () {}, child: Text('Create new')),
              SizedBox(height: 100.0 * ratio),
              ElevatedButton(onPressed: () {}, child: Text('Done')),
              SizedBox(height: 100.0 * ratio),
            ]),
      ),
    );
  }
}
