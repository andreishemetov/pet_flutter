part of 'list_page_bloc.dart';

enum ListPageStatus {
  initial,
  loading,
  data,
}

class ListPageBlocState {
  final ListPageStatus status;
  final List<String> data;

  const ListPageBlocState({
    required this.status,
    required this.data,
  });

  factory ListPageBlocState.initial([List<String>? data]) => ListPageBlocState(
        status: ListPageStatus.initial,
        data: data ?? [],
      );

  ListPageBlocState copyWith({
    ListPageStatus? status,
    List<String>? data,
  }) {
    return ListPageBlocState(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}
