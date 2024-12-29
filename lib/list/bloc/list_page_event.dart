part of 'list_page_bloc.dart';

sealed class ListPageEvent {}

final class Initialize extends ListPageEvent {}

final class LoadData extends ListPageEvent {}
