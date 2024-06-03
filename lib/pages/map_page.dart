import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // MapController mapController = MapController(
  //   initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
  //   areaLimit: BoundingBox(
  //     east: 10.4922941,
  //     north: 47.8084648,
  //     south: 45.817995,
  //     west: 5.9559113,
  //   ),
  // );

  final controller = MapController(
      initPosition: GeoPoint(
    latitude: 47.4358055,
    longitude: 8.4737324,
  ));

  GeoPoint? userLocation;

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
      _addMarkers();
    });
  }

  Future<void> _addMarkers() async {
    if (userLocation != null) {
      await controller.addMarker(userLocation!);
      await controller.addMarker(GeoPoint(
          latitude: 52.229676, longitude: 21.012229)); // Example point 1
      await controller.addMarker(GeoPoint(
          latitude: 50.0646501, longitude: 19.9449799)); // Example point 2
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    // mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OSMFlutter(
        controller: controller,
        // mapIsLoading: const Center(child: CircularProgressIndicator()),
        onMapIsReady: (isReady) {
          if (isReady) {
            if (userLocation != null) {
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
        ),
      ),
    );
  }
}
