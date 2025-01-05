import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_flutter/google_search_field/bloc/google_search_field_bloc.dart';
import 'package:pet_flutter/google_search_field/model/google_place.dart';
import 'package:pet_flutter/google_search_field/model/google_search_validation_error.dart';
import 'package:pet_flutter/google_search_field/service/google_place_service.dart';
import 'package:pet_flutter/search_field/bloc/search_field_bloc.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';
import 'package:pet_flutter/search_field/search_field_widget.dart';
import 'package:provider/provider.dart';

class GoogleSearchFieldFlow extends StatelessWidget {
  final ValueSetter<SearchResult<GooglePlace, GoogleSearchValidationError>>
      onChange;
  const GoogleSearchFieldFlow({
    required this.onChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<SearchFieldBloc<GooglePlace, GoogleSearchValidationError>>(
          create: (context) {
            return GoogleSearchFieldBloc(
              service: GooglePlaceService(),
            );
          },
        ),
      ],
      child: SearchFieldWidget<GooglePlace, GoogleSearchValidationError>(
        onChange: onChange,
      ),
    );
  }
}
