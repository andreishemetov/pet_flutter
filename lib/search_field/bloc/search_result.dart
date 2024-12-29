abstract class SearchResult<D, V> {
  String get text;
}

class TextResult<D, V> extends SearchResult<D, V> {
  @override
  final String text;
  final V? validationError;

  TextResult({
    required this.text,
    this.validationError,
  });
}

class ObjectResult<D, V> extends SearchResult<D, V> {
  final D object;

  ObjectResult({
    required this.object,
  });

  // MUST HAVE, You need to override this method in your class
  @override
  String get text => object.toString();
}
