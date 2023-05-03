import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatelessWidget {
  const Map({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.grey.shade900),
        title: Text(
          'Choose Location',
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade900,
              fontSize: 18),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: const CameraPosition(
            target: LatLng(23.8908884, 90.9725178),
            zoom: 15,
          ),
          markers: {
            const Marker(
              markerId: MarkerId('myMarker'),
              position: LatLng(23.8908884, 90.9725178),
              infoWindow: InfoWindow(title: 'FoodYum Store'),
            ),
          }),
    );
  }
}
