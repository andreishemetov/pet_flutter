import 'package:pet_flutter/google_search_field/model/google_place.dart';
import 'package:pet_flutter/google_search_field/model/google_search_validation_error.dart';
import 'package:pet_flutter/google_search_field/service/google_place_service.dart';
import 'package:pet_flutter/search_field/bloc/search_field_bloc.dart';

class GoogleSearchFieldBloc
    extends SearchFieldBloc<GooglePlace, GoogleSearchValidationError> {
  final GooglePlaceService service;

  GoogleSearchFieldBloc({required this.service});

  @override
  GoogleSearchValidationError? validate(String text) {
    return null;
  }

  @override
  Future<List<GooglePlace>> getObjects(String text) async {
    return [];
  }
}
