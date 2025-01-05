import 'package:pet_flutter/google_search_field/model/google_place.dart';

class GooglePlaceService {
  Future<List<GooglePlace>> getPlaces(String text) async {
    final places = [
      GooglePlace(address: 'Place 1'),
      GooglePlace(address: 'Place 2'),
      GooglePlace(address: 'Place 3'),
      GooglePlace(address: 'Place 4'),
      GooglePlace(address: 'Place 5'),
      GooglePlace(address: 'Place 6'),
      GooglePlace(address: 'Place 7'),
      GooglePlace(address: 'Place 8'),
      GooglePlace(address: 'Place 9'),
      GooglePlace(address: 'Place 10'),
      GooglePlace(address: 'Place 11'),
      GooglePlace(address: 'Place 12'),
      GooglePlace(address: 'Place 13'),
      GooglePlace(address: 'Place 14'),
      GooglePlace(address: 'Place 15'),
      GooglePlace(address: 'Place 16'),
      GooglePlace(address: 'Place 17'),
      GooglePlace(address: 'Place 18'),
      GooglePlace(address: 'Place 19'),
    ];
    return Future.delayed(
      const Duration(milliseconds: 10),
      () => places.sublist(text.length),
    );
  }
}
