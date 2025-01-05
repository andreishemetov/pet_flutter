import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_flutter/search_field/bloc/search_field_bloc.dart';
import 'package:pet_flutter/search_field/bloc/search_result.dart';

class SearchFieldWidget<D extends TextValue, V extends ILocalize>
    extends StatefulWidget {
  final ValueSetter<SearchResult<D, V>> onChange;
  const SearchFieldWidget({
    required this.onChange,
    super.key,
  });

  @override
  State<SearchFieldWidget<D, V>> createState() =>
      _SearchFieldWidgetState<D, V>();
}

class _SearchFieldWidgetState<D extends TextValue, V extends ILocalize>
    extends State<SearchFieldWidget<D, V>> {
  final _textFieldKey = GlobalKey<FormState>();
  ILocalize? validationError;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchFieldBloc<D, V>, SearchFieldState<D, V>>(
      listener: (context, state) {
        widget.onChange(state.data);
        final newValidationError = state.data is TextResult
            ? (state.data as TextResult).validationError
            : null;
        if (validationError != newValidationError) {
          validationError = newValidationError;
          _textFieldKey.currentState?.validate();
        }
      },
      child: Form(
        key: _textFieldKey,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          validator: (_) => validationError?.localize(context),
          onChanged: (text) => context.read<SearchFieldBloc<D, V>>().add(
                ChangeText(text: text),
              ),
        ),
      ),
    );
  }
}
