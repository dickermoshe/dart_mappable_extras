A small library with some utilities for handling JSON similarly to JavaScript Objects

# Untagged Unions

This library allows you to use a union type with dart_mappable.
```dart
@MappableClass(includeCustomMappers: unionMappers)
class UnionTest2 with UnionTest2Mappable {
  final Union2<String, int> union;
  UnionTest2({required this.union});
}

void main() {
  final unionTest = UnionTest2(union: Union2.in1('test'));
  final json = unionTest.toMap();
  expect(json, {'union': 'test'});
  final unionTest2 = UnionTest2(union: Union2.in2(1));
  final json2 = unionTest2.toMap();
  expect(json2, {'union': 1});
}
```

# Optional

This library allows you to use an optional type with dart_mappable.
```dart
@MappableClass(includeCustomMappers: [OptionalMapper()], hook: RemoveUndefinedFields(["optional", "optionalNullable"]))
class OptionalTest with OptionalTestMappable {
  final Optional<String> optional;
  final Optional<int?> optionalNullable;
  OptionalTest({required this.optional, required this.optionalNullable});
}

void main() {
  final optionalTest = OptionalTest(optional: Optional.defined('test'), optionalNullable: Optional.undefined());
  final json = optionalTest.toMap();
  expect(json, {'optional': 'test'});
}
```

