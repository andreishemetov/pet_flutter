import 'package:flutter/material.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';

abstract class SearchFieldWidget<D, V> extends StatelessWidget {
  final ValueSetter<SearchResult<D, V>> onChange;
  const SearchFieldWidget({
    required this.onChange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
