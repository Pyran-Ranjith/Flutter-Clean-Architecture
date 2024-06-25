import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:muhamead_alli_riverpod_geolocation_app/Domain/domain_location_repository.dart';
import 'package:muhamead_alli_riverpod_geolocation_app/data/data%20_location_repository_impl.dart';

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return LocationRepositoryImpl();
});

final locationNotifierProvider = StateNotifierProvider<LocationNotifier, Position>((ref)
 {

ref.watch(locationRepositoryProvider);
}
);


