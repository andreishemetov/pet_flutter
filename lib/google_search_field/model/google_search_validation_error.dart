import 'package:flutter/material.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';

enum GoogleSearchValidationError implements ILocalize {
  error1;

  @override
  String localize(BuildContext context) {
    return 'error1';
  }
}
