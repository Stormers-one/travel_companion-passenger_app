import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:o_k/shared/colors.dart';

class MapView extends StatefulWidget {
  @override
  _MapView createState() => _MapView();
}

class _MapView extends State<MapView> {
  GoogleMapController mapController;
  LatLng _center;
  Position currentLocation;
  CameraPosition _position;
  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }

  // final LatLng _center = const LatLng(45, 0);
  // LatLng pos;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final Map<String, Marker> _markers = {};
  void _getLocation() async {
    var currentLocation = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    setState(() {
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId("curr_loc"),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        infoWindow: InfoWindow(title: 'Your Location'),
      );
      _markers["Current Location"] = marker;
    });
  }
    void _updateCameraPosition(CameraPosition position) {
    setState(() {
      _position = position;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(elevation: 0,
        // backgroundColor: bgOrange,
        // title: Text('Bus Routes'),
        // ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 3,
              child: Stack(
                children: <Widget>[
                  GoogleMap(
                    onMapCreated: _onMapCreated,  
                    myLocationEnabled: true,
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                    compassEnabled: true,
                    onCameraMove: _updateCameraPosition,
                  ),
                  Container(
                    
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  decoration: new BoxDecoration(
                    color: bgOrange ,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
