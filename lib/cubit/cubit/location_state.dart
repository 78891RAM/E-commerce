part of 'location_cubit.dart';

abstract class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object?> get props => [];
}

class LocationInitial extends LocationState {}

class LocationPermissionDenied extends LocationState {
  
}

class LocationPermissionGranted extends LocationState {}

class LocationLoaded extends LocationState {
  final LocationData currentLocation;
  final String locationName;

  const LocationLoaded({
    required this.currentLocation,
    required this.locationName,
  });

  @override
  List<Object?> get props => [currentLocation, locationName];
}

class LocationError extends LocationState {
  final String message;

  const LocationError({required this.message});

  @override
  List<Object?> get props => [message];
}
