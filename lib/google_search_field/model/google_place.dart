import 'package:pet_flutter/search_field/bloc/search_result.dart';

class GooglePlace implements TextValue {
  final String address;

  GooglePlace({
    required this.address,
  });

  @override
  String get text => address;
}
