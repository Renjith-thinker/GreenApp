import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  double ratio = 1;
  Set<Marker> _markers = HashSet<Marker>();
  late GoogleMapController _mapController;
  void _onMapCreated(GoogleMapController controller) {
    //_mapController controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId("0"),
          position: LatLng(37.77483, -122.41942), ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green App"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        // shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(100)),
        elevation: 0.00,
        backgroundColor: Colors.green,
      ),
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(37.77483, -122.41942),
            zoom: 12,
          )),
    );
  }
}

mixin _mapController {
}

//mixin _mapController {}
