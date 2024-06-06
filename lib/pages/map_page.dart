import 'package:crazy_places/classes/points/location_point.dart';
import 'package:crazy_places/points_data/fp_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:geolocator/geolocator.dart';
import 'package:crazy_places/points_data/hp_data.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final controller = MapController.withPosition(
    initPosition: GeoPoint(
      latitude: 47.4358055,
      longitude: 8.4737324,
    ),
  );

  GeoPoint? userLocation;
  List<LocationPoint> markers = [];

  Future<void> _getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, don't continue
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, don't continue
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, don't continue
      return;
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      userLocation =
          GeoPoint(latitude: position.latitude, longitude: position.longitude);
      controller.goToLocation(userLocation!);
      controller.setZoom(stepZoom: 10);
      _addMarkers();
    });
  }

  Future<void> _addMarkers() async {
    if (userLocation != null) {
      await controller.addMarker(userLocation!,
          markerIcon: const MarkerIcon(
            icon: Icon(
              Icons.person_pin_circle,
              color: Colors.blue,
              size: 20,
            ),
          ),);
      for (var historicalPoint in historicalPoints) {
        final point = GeoPoint(
          latitude: historicalPoint.lat,
          longitude: historicalPoint.lang,
        );
        await controller.addMarker(
          point,
          markerIcon: MarkerIcon(
            icon: historicalPoint.icon,
          ),
        );
        markers.add(historicalPoint);
      }
      for (var funnyPoint in funnyPoints) {
        final point = GeoPoint(
          latitude: funnyPoint.lat,
          longitude: funnyPoint.lang,
        );
        await controller.addMarker(
          point,
          markerIcon: MarkerIcon(
            icon: funnyPoint.icon,
          ),
        );
        markers.add(funnyPoint);
      }
    }
  }

  void _checkMarkerClick(GeoPoint point) {
    for (var marker in markers) {
      print("dystans ${marker.distanceTo(point.latitude, point.longitude)}");
      if ((point.latitude - marker.lat).abs() < 0.1 &&
          (point.longitude - marker.lang).abs() < 0.1) {
        _showMarkerDialog(marker.name, marker.description);
        break;
      }
    }
  }

  void _showMarkerDialog(String? placeName, String? description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(placeName ?? 'Coś poszło nie tak'),
          content: Text(description ?? 'Coś poszło nie tak'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _getUserLocation();
    controller.listenerMapSingleTapping.addListener(() async {
      var position = controller.listenerMapSingleTapping.value;
      if (position != null) {
        _checkMarkerClick(position);
      }
    });
    // controller.listenerMapSingleTapping.
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OSMFlutter(
        controller: controller,
        onMapIsReady: (isReady) async {
          if (isReady) {
            if (userLocation != null) {
              await controller.currentLocation();
              _addMarkers();
            }
          }
        },
        osmOption: OSMOption(
          userTrackingOption: const UserTrackingOption(
            enableTracking: true,
            unFollowUser: false,
          ),
          zoomOption: const ZoomOption(
            initZoom: 8,
            minZoomLevel: 3,
            maxZoomLevel: 19,
            stepZoom: 1.0,
          ),
          roadConfiguration: const RoadOption(
            roadColor: Colors.yellowAccent,
          ),
          markerOption: MarkerOption(
              defaultMarker: const MarkerIcon(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
              size: 56,
            ),
          )),
        ),
      ),
    );
  }
}
