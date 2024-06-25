// ignore_for_file: file_names

import 'package:geolocator/geolocator.dart';
import 'package:muhamead_alli_riverpod_geolocation_app/Domain/domain_location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  @override
  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

}