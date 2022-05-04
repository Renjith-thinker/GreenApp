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
              ElevatedButton(onPressed: () {}, child: Text('import from galery')),
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
