import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  double ratio = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Green", //App name
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: ratio * 30.0,
              wordSpacing: 4.0,
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () {}, child: Text('Enter Location')),
              SizedBox(height: 100.0 * ratio),
              ElevatedButton(onPressed: () {}, child: Text('Present Location')),
              SizedBox(height: 100.0 * ratio),
              ElevatedButton(onPressed: () {}, child: Text('Done')),
              SizedBox(height: 100.0 * ratio),
            ]),
      ),
    );
  }
}
