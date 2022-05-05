//import 'dart:html';
import 'dart:ui';

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
           // shape: RoundedRectangleBorder(
             // borderRadius: BorderRadius.circular(100)),
            elevation: 0.00,
            backgroundColor: Color.fromARGB(230, 3, 95, 6),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Text('Add Image'),
                             style: ElevatedButton.styleFrom(
                               primary: Color.fromARGB(255, 4, 79, 6),
                               onPrimary: Colors.white,
                               textStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontStyle: FontStyle.normal
                               ),
                             ),
                    
                      onPressed: () {
                        Navigator.pushNamed(context, '/page2', arguments: {});
                      },),
                  SizedBox(height: 100.0 * ratio),
                  ElevatedButton(
                    child: Text('Add Location'),
                             style: ElevatedButton.styleFrom(
                               primary: Color.fromARGB(255, 4, 79, 6),
                               onPrimary: Colors.white,
                               textStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontStyle: FontStyle.normal
                               ),
                             ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/page3', arguments: {});
                      },),
                  SizedBox(height: 100.0 * ratio),
                  
                  
                  
                 // persistentFooterButtons:<Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:<Widget>[
                          ElevatedButton(
                            child: Text('Register'),
                             style: ElevatedButton.styleFrom(
                               primary: Color.fromARGB(255, 4, 79, 6),
                               onPrimary: Colors.white,
                               textStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 40,
                                 fontStyle: FontStyle.normal
                               ),
                             ),
                            onPressed: () {
                            Navigator.pushNamed(context, '/page4', arguments: {});
                          },
                          
                          ),
                           ElevatedButton(
                             child: Text('Login'),
                             style: ElevatedButton.styleFrom(
                               primary: Color.fromARGB(255, 4, 79, 6),
                               onPrimary: Colors.white,
                               textStyle: TextStyle(
                                 color: Colors.white,
                                 fontSize: 40,
                                 fontStyle: FontStyle.normal
                               ),
                             ),
                             
                             onPressed: () {
                            Navigator.pushNamed(context, '/page7', arguments: {});
                          }, 
                          
                           ),
                    
                        ]
                      ),
                    )
                  ]
            )
                ),
                
          ),
        );
    
    
  }
}
