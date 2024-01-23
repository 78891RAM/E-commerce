import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Location location = Location();
  LocationData? _currentLocation;
  String _locationName = '';

  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
  }

  Future<void> _checkLocationPermission() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      LocationData locationData = await location.getLocation();

      if (locationData.latitude != null && locationData.longitude != null) {
        List<geocoding.Placemark> placemarks =
            await geocoding.placemarkFromCoordinates(
                locationData.latitude!, locationData.longitude!);

        if (placemarks.isNotEmpty) {
          geocoding.Placemark placemark = placemarks[0];
          setState(() {
            _currentLocation = locationData;
            _locationName =
                '${placemark.subThoroughfare} ${placemark.thoroughfare}, ${placemark.locality}';
          });
        }
      } else {
        print('Location data is null');
      }
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  // Future<void> _getCurrentLocation() async {
  //   try {
  //     LocationData locationData = await location.getLocation();
  //     List<geocoding.Placemark> placemarks =
  //         await geocoding.placemarkFromCoordinates(locationData.latitude, locationData.longitude);

  //     if (placemarks.isNotEmpty) {
  //       geocoding.Placemark placemark = placemarks[0];
  //       setState(() {
  //         _currentLocation = locationData;
  //         _locationName = '${placemark.subThoroughfare} ${placemark.thoroughfare}, ${placemark.locality}';
  //       });
  //     }
  //   } catch (e) {
  //     print('Error getting location: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _currentLocation != null
                ? Column(
                    children: [
                      Text(
                        'Location Name: $_locationName',
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Latitude: ${_currentLocation!.latitude}\nLongitude: ${_currentLocation!.longitude}',
                      ),
                    ],
                  )
                : const Text('Location not available'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getCurrentLocation();
        },
        tooltip: 'Get Location',
        child: const Icon(Icons.location_on),
      ),
    );
  }
}
