part of 'search_field_bloc.dart';

class SearchFieldState<D extends TextValue, V extends ILocalize> {
  final SearchResult<D, V> data;
  final List<D> objects;

  SearchFieldState({
    required this.data,
    this.objects = const [],
  });

  SearchFieldState<D, V> copyWith({
    SearchResult<D, V>? data,
    List<D>? objects,
  }) =>
      SearchFieldState<D, V>(
        data: data ?? this.data,
        objects: objects ?? this.objects,
      );
}
