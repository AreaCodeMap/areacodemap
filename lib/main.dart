import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(ContactsExampleApp());

class ContactsExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: TestMapPolyline(),
    );
  }
}

class TestMapPolyline extends StatefulWidget {
  @override
  _TestMapPolylineState createState() => _TestMapPolylineState();
}

class _TestMapPolylineState extends State<TestMapPolyline> {
  final Set<Marker> _markers = {};
  final Set<Polygon> _polygon = {};

  GoogleMapController controller;

  List<LatLng> latlngSegment1 = List();
  static LatLng _lat1 = LatLng(13.035606, 77.562381);
  static LatLng _lat2 = LatLng(13.070632, 77.693071);
  static LatLng _lat3 = LatLng(12.970387, 77.693621);
  static LatLng _lat4 = LatLng(12.858433, 77.575691);
  static LatLng _lat5 = LatLng(12.948029, 77.472936);
  static LatLng _lat6 = LatLng(13.069280, 77.455844);
  LatLng _lastMapPosition = _lat1;

  @override
  void initState() {
    super.initState();
    //line segment 1
    latlngSegment1.add(_lat1);
    latlngSegment1.add(_lat2);
    latlngSegment1.add(_lat3);
    latlngSegment1.add(_lat4);
    latlngSegment1.add(_lat4);
    latlngSegment1.add(_lat5);
    latlngSegment1.add(_lat6);
    latlngSegment1.add(_lat1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        //that needs a list<Polyline>
        polygons: _polygon,
        markers: _markers,
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _lastMapPosition,
          zoom: 11.0,
        ),
        mapType: MapType.normal,
      ),
    );
  }

  void _onMapCreated(GoogleMapController controllerParam) {
    setState(() {
      controller = controllerParam;
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        //_lastMapPosition is any coordinate which should be your default
        //position when map opens up
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: 'Awesome Polyline tutorial',
          snippet: 'This is a snippet',
        ),
      ));

      //different sections of polyline can have different colors
      _polygon.add(Polygon(
        polygonId: PolygonId("gon1"),
        visible: true,
        fillColor: Color.fromARGB(30, 209, 90, 90),
        points: latlngSegment1,
        strokeColor: Color.fromARGB(0, 209, 90, 90),

      ));
    });
  }
}

