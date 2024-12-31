import 'package:pet_flutter/google_search_field/bloc/google_search_field_bloc.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';

class GoogleSearchObjectResult 
  extends ObjectResult<Place, GoogleSearchValidationError> {
  GoogleSearchObjectResult({required super.object});

  @override
  String get text => object.address;
}
