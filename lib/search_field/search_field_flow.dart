import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_flutter/search_field/bloc/search_field_bloc.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';
import 'package:pet_flutter/search_field/search_field_widget.dart';
import 'package:provider/provider.dart';

class SearchFieldFlow<D, V> extends StatelessWidget {
  final ValueSetter<SearchResult<D, V>> onChange;
  const SearchFieldFlow({
    required this.onChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchFieldBloc<D, V>(),
        ),
      ],
      child: SearchFieldWidget(onChange: onChange),
    );
  }
}
