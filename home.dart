import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  double ratio = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
          appBar: AppBar(
            title: Text("Green App"),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 60.2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)),
            elevation: 0.00,
            backgroundColor: Colors.green,
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/page2', arguments: {});
                      },
                      child: Text('Add Image')),
                  SizedBox(height: 100.0 * ratio),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/page3', arguments: {});
                      },
                      child: Text('Add Location')),
                  SizedBox(height: 100.0 * ratio),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/page4', arguments: {});
                      },
                      child: Text('Register')),
                  SizedBox(height: 100.0 * ratio),
                ]),
          ),
        ),
    );
    
  }
}
