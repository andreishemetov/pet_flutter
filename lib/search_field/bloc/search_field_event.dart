part of 'search_field_bloc.dart';

sealed class SearchFieldEvent {}

final class ChangeText extends SearchFieldEvent {
  final String text;
  ChangeText({required this.text});
}

final class Clean extends SearchFieldEvent {}

final class SelectObject extends SearchFieldEvent {
  final int index;
  SelectObject({required this.index});
}
