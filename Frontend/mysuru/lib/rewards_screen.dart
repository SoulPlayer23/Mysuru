import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RewardsScreen extends StatefulWidget {
  @override
  _RewardsScreenState createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                      target: LatLng(12.2958, 76.6394), zoom: 11.0),
                  markers: {
                    mysorepalaceMarker,
                    stphelominaMarker,
                    ranganathittuMarker,
                    brindavanMarker,
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Marker mysorepalaceMarker = Marker(
  markerId: MarkerId('mysorepalace'),
  position: LatLng(12.3052, 76.6552),
  infoWindow: InfoWindow(title: 'Mysore Palace'),
);
Marker stphelominaMarker = Marker(
  markerId: MarkerId('mysorepalace'),
  position: LatLng(12.3210, 76.6583),
  infoWindow: InfoWindow(title: "St. Phelomina's Cathedral"),
);
Marker ranganathittuMarker = Marker(
  markerId: MarkerId('mysorepalace'),
  position: LatLng(12.4244, 76.6563),
  infoWindow: InfoWindow(title: 'Ranganathittu Bird Sanctuary'),
);
Marker brindavanMarker = Marker(
  markerId: MarkerId('mysorepalace'),
  position: LatLng(12.4217, 76.5728),
  infoWindow: InfoWindow(title: 'Brindavan Garden'),
);
