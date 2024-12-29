import 'package:bloc/bloc.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';

part 'search_field_event.dart';
part 'search_field_state.dart';

class SearchFieldBloc<D, V>
    extends Bloc<SearchFieldEvent, SearchFieldState<D, V>> {
  SearchFieldBloc() : super(SearchFieldState(data: TextResult(text: ''))) {
    on<ChangeText>(onChangeText);
    on<Clean>(onClean);
    on<SelectObject>(onSelectObject);
  }

  Future<void> onChangeText(
    ChangeText event,
    Emitter<SearchFieldState<D, V>> emit,
  ) async {
    final validationError = validate(event.text);
    if (validationError != null) {
      emit(
        state.copyWith(
          data: TextResult(
            text: event.text,
            validationError: validationError,
          ),
          objects: [],
        ),
      );
      return;
    }
    final objects = await getObjects(event.text);
    emit(
      state.copyWith(
        data: TextResult(text: event.text),
        objects: objects,
      ),
    );
  }

  void onClean(
    Clean event,
    Emitter<SearchFieldState<D, V>> emit,
  ) {
    emit(state.copyWith(data: TextResult(text: ''), objects: []));
  }

  void onSelectObject(
    SelectObject event,
    Emitter<SearchFieldState<D, V>> emit,
  ) {
    if (event.index >= state.objects.length) return;
    final obj = state.objects[event.index];
    emit(state.copyWith(data: ObjectResult(object: obj), objects: []));
  }

  V? validate(String text) => null;

  Future<List<D>> getObjects(String text) => Future.value([]);
}
