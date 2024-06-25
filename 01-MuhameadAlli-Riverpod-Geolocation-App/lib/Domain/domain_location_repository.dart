// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

abstract class LocationRepository {
  Future<Position> getCurrentPosition();
}

class LocationNotifier extends StateNotifier<Position?> {
  final LocationRepository _repository;
  LocationNotifier(this._repository) : super(null);
  Future<void> fetchCurrentGeoposition() async {
    try {
      final currentPosition = await _repository.getCurrentPosition();
      state = currentPosition;
    } catch (error) {
      print('Error: $error');
    }
  }
}
