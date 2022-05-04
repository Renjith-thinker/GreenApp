import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
              ElevatedButton(onPressed: () {}, child: Text('Enter Name')),
              SizedBox(height: 100.0 * ratio),
              ElevatedButton(onPressed: () {}, child: Text('Enter Phone Number')),
              SizedBox(height: 100.0 * ratio),
              ElevatedButton(onPressed: () {}, child: Text('Submit')),
              SizedBox(height: 100.0 * ratio),
            ]),
      ),
    );
  }
}
