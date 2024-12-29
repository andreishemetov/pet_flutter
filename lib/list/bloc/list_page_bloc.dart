import 'package:bloc/bloc.dart';

part 'list_page_event.dart';
part 'list_page_bloc_state.dart';

class ListPageBloc extends Bloc<ListPageEvent, ListPageBlocState> {
  ListPageBloc() : super(ListPageBlocState.initial()) {
    on<ListPageEvent>((event, emit) {});
  }
}
