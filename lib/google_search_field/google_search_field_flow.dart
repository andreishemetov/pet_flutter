import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_flutter/google_search_field/bloc/google_search_field_bloc.dart';
import 'package:pet_flutter/google_search_field/google_search_field_widget.dart';
import 'package:pet_flutter/google_search_field/service/google_place_service.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';
import 'package:provider/provider.dart';

class GoogleSearchFieldFlow extends StatelessWidget {
  final ValueSetter<SearchResult<Place, GoogleSearchValidationError>> onChange;
  const GoogleSearchFieldFlow({
    required this.onChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => GoogleSearchFieldBloc(service: GooglePlaceService(),),
        ),
      ],
      child: GoogleSearchFieldWidget(onChange: onChange),
    );
  }
}
