// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pet_flutter/google_search_field/service/google_place_service.dart';
import 'package:pet_flutter/search_field/bloc/search_field_bloc.dart';

class Place {
  final String address;

  Place({
    required this.address,
  });
}

enum GoogleSearchValidationError {
  error1,
}

class GoogleSearchFieldBloc 
  extends SearchFieldBloc<Place, GoogleSearchValidationError> {

  final GooglePlaceService service;

  GoogleSearchFieldBloc({required this.service});
  
  @override
  GoogleSearchValidationError? validate(String text) {
    return null;
  }

  @override
  Future<List<Place>> getObjects(String text) async {
    return [];
  }
}
