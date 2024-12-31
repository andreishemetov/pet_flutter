import 'package:flutter/material.dart';
import 'package:pet_flutter/google_search_field/bloc/google_search_field_bloc.dart';
import 'package:pet_flutter/search_field/search_field_widget.dart';

class GoogleSearchFieldWidget 
  extends SearchFieldWidget<Place, GoogleSearchValidationError> {

  const GoogleSearchFieldWidget({required super.onChange, super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
