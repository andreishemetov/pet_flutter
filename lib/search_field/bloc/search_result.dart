import 'package:flutter/widgets.dart';

abstract class TextValue {
  String get text;
}

abstract class SearchResult<D extends TextValue, V extends ILocalize>
    implements TextValue {}

abstract class ILocalize {
  String localize(BuildContext context);
}

class TextResult<D extends TextValue, V extends ILocalize>
    implements SearchResult<D, V> {
  @override
  final String text;
  final V? validationError;

  TextResult({
    required this.text,
    this.validationError,
  });
}

class ObjectResult<D extends TextValue, V extends ILocalize>
    implements SearchResult<D, V> {
  final D object;

  ObjectResult({
    required this.object,
  });

  @override
  String get text => object.text;
}
