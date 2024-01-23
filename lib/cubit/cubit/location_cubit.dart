// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:geocoding/geocoding.dart'
//     as geocoding; // Alias for geocoding package
// import 'package:location/location.dart'; // No alias for location package

// part 'location_state.dart';

// class LocationCubit extends Cubit<LocationState> {
//   Location location = Location();

//   LocationCubit() : super(LocationInitial());

//   Future<void> checkLocationPermission() async {
//     bool serviceEnabled = await location.serviceEnabled();
//     if (!serviceEnabled) {
//       serviceEnabled = await location.requestService();
//       if (!serviceEnabled) {
//         emit(LocationPermissionDenied());
//         return;
//       }
//     }

//     PermissionStatus permissionGranted = await location.hasPermission();
//     if (permissionGranted == PermissionStatus.denied) {
//       permissionGranted = await location.requestPermission();
//       if (permissionGranted != PermissionStatus.granted) {
//         emit(LocationPermissionDenied());
//         return;
//       }
//     }

//     emit(LocationPermissionGranted());
//     getCurrentLocation();
//   }

//   Future<void> getCurrentLocation() async {
//     try {
//       LocationData locationData = await location.getLocation();

//       if (locationData.latitude != null && locationData.longitude != null) {
//         List<geocoding.Placemark> placemarks =
//             await geocoding.placemarkFromCoordinates(
//           locationData.latitude!,
//           locationData.longitude!,
//         );

//         if (placemarks.isNotEmpty) {
//           geocoding.Placemark placemark = placemarks[0];
//           emit(LocationLoaded(
//             currentLocation: locationData,
//             locationName:
//                 '${placemark.subThoroughfare} ${placemark.thoroughfare}, ${placemark.locality}',
//           ));
//         }
//       } else {
//         emit(const LocationError(message: 'Location data is null'));
//       }
//     } catch (e) {
//       emit(LocationError(message: 'Error getting location: $e'));
//     }
//   }
// }

// location_cubit.dart

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:location/location.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  Location location = Location();
  // late String selectedDistrict; // Assuming you have this variable

  LocationCubit() : super(LocationInitial());

  Future<void> checkLocationPermission() async {
    try {
      bool serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          emit(LocationPermissionDenied());
          return;
        }
      }

      PermissionStatus permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          emit(LocationPermissionDenied());
          return;
        }
      }

      emit(LocationPermissionGranted());
      getCurrentLocation();
    } catch (e) {
      emit(LocationError(message: 'Error checking location permission: $e'));
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      LocationData locationData = await location.getLocation();

      if (locationData.latitude != null && locationData.longitude != null) {
        // Use the location data
        emit(LocationLoaded(
          currentLocation: locationData,
          locationName: 'Your location name', // Update with your logic
        ));
      } else {
        emit(const LocationError(message: 'Location data is null'));
      }
    } catch (e) {
      emit(LocationError(message: 'Error getting location: $e'));
    }
  }
}
