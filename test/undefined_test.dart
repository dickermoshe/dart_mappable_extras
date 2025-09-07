import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable_extras/dart_mappable_extras.dart';
import 'package:test/test.dart';
part 'undefined_test.mapper.dart';

@MappableClass(
  includeCustomMappers: [OptionalMapper()],
  hook: RemoveUndefinedFields(["optional", "optionalNullable"]),
)
class UndefinedTest with UndefinedTestMappable {
  final Optional<String> optional;
  final Optional<int?> optionalNullable;
  UndefinedTest({required this.optional, required this.optionalNullable});
}

@MappableClass(
  includeCustomMappers: [OptionalMapper(), CustomTypeMapper()],
  hook: RemoveUndefinedFields(["optional", "optionalNullable"]),
)
class CustomTypeUndefinedTest with CustomTypeUndefinedTestMappable {
  final Optional<CustomType> optional;
  final Optional<int?> optionalNullable;
  CustomTypeUndefinedTest({
    required this.optional,
    required this.optionalNullable,
  });
}

class CustomType {
  final String value;
  CustomType({required this.value});

  @override
  bool operator ==(Object other) {
    return other is CustomType && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class CustomTypeMapper extends SimpleMapper<CustomType> {
  const CustomTypeMapper();
  @override
  CustomType decode(Object value) {
    return CustomType(value: value as String);
  }

  @override
  Object encode(CustomType value) {
    return value.value;
  }
}

void main() {
  group("undefined", () {
    test('emtpy', () {
      final undefinedTest = UndefinedTest(
        optional: Optional.undefined(),
        optionalNullable: Optional.undefined(),
      );
      final json = undefinedTest.toMap();
      expect(json, {});
      final undefinedTest2 = UndefinedTestMapper.fromMap(json);
      expect(undefinedTest2.optional, Optional.undefined());
      expect(undefinedTest2.optionalNullable, Optional.undefined());
    });
    test('defined', () {
      final undefinedTest = UndefinedTest(
        optional: Optional.defined('test'),
        optionalNullable: Optional.defined(1),
      );
      final json = undefinedTest.toMap();
      expect(json, {'optional': 'test', 'optionalNullable': 1});
      final undefinedTest2 = UndefinedTestMapper.fromMap(json);
      expect(undefinedTest2.optional, Optional.defined('test'));
      expect(undefinedTest2.optionalNullable, Optional.defined(1));
    });
  });
  test('null throws', () {
    expect(
      () => UndefinedTestMapper.fromMap({'optional': null}),
      throwsA(isA<MapperException>()),
    );
  });
  group('undefined nullable', () {
    test('emtpy', () {
      final undefinedTest = UndefinedTest(
        optional: Optional.undefined(),
        optionalNullable: Optional.undefined(),
      );
      final json = undefinedTest.toMap();
      expect(json, {});
      final undefinedTest2 = UndefinedTestMapper.fromMap(json);
      expect(undefinedTest2.optional, Optional.undefined());
      expect(undefinedTest2.optionalNullable, Optional.undefined());
    });
    test('defined', () {
      final undefinedTest = UndefinedTest(
        optional: Optional.defined('test'),
        optionalNullable: Optional.defined(1),
      );
      final json = undefinedTest.toMap();
      expect(json, {'optional': 'test', 'optionalNullable': 1});
      final undefinedTest2 = UndefinedTestMapper.fromMap(json);
      expect(undefinedTest2.optional, Optional.defined('test'));
      expect(undefinedTest2.optionalNullable, Optional.defined(1));
    });
    test('null', () {
      final undefinedTest = UndefinedTest(
        optional: Optional.defined('test'),
        optionalNullable: Optional.defined(null),
      );
      final json = undefinedTest.toMap();
      expect(json, {'optional': 'test', 'optionalNullable': null});
      final undefinedTest2 = UndefinedTestMapper.fromMap(json);
      expect(undefinedTest2.optional, Optional.defined('test'));
      expect(undefinedTest2.optionalNullable, Optional.defined(null));
    });
  });
  group('custom type', () {
    group("undefined", () {
      test('emtpy', () {
        final undefinedTest = CustomTypeUndefinedTest(
          optional: Optional.undefined(),
          optionalNullable: Optional.undefined(),
        );
        final json = undefinedTest.toMap();
        expect(json, {});
        final undefinedTest2 = CustomTypeUndefinedTestMapper.fromMap(json);
        expect(undefinedTest2.optional, Optional.undefined());
        expect(undefinedTest2.optionalNullable, Optional.undefined());
      });
      test('defined', () {
        final undefinedTest = CustomTypeUndefinedTest(
          optional: Optional.defined(CustomType(value: 'test')),
          optionalNullable: Optional.defined(1),
        );
        final json = undefinedTest.toMap();
        expect(json, {'optional': 'test', 'optionalNullable': 1});
        final undefinedTest2 = CustomTypeUndefinedTestMapper.fromMap(json);
        expect(
          undefinedTest2.optional,
          Optional.defined(CustomType(value: 'test')),
        );
        expect(undefinedTest2.optionalNullable, Optional.defined(1));
      });
    });
    test('null throws', () {
      expect(
        () => CustomTypeUndefinedTestMapper.fromMap({'optional': null}),
        throwsA(isA<MapperException>()),
      );
    });
    group('undefined nullable', () {
      test('emtpy', () {
        final undefinedTest = CustomTypeUndefinedTest(
          optional: Optional.undefined(),
          optionalNullable: Optional.undefined(),
        );
        final json = undefinedTest.toMap();
        expect(json, {});
        final undefinedTest2 = CustomTypeUndefinedTestMapper.fromMap(json);
        expect(undefinedTest2.optional, Optional.undefined());
        expect(undefinedTest2.optionalNullable, Optional.undefined());
      });
      test('defined', () {
        final undefinedTest = CustomTypeUndefinedTest(
          optional: Optional.defined(CustomType(value: 'test')),
          optionalNullable: Optional.defined(1),
        );
        final json = undefinedTest.toMap();
        expect(json, {'optional': 'test', 'optionalNullable': 1});
        final undefinedTest2 = CustomTypeUndefinedTestMapper.fromMap(json);
        expect(
          undefinedTest2.optional,
          Optional.defined(CustomType(value: 'test')),
        );
        expect(undefinedTest2.optionalNullable, Optional.defined(1));
      });
      test('null', () {
        final undefinedTest = CustomTypeUndefinedTest(
          optional: Optional.defined(CustomType(value: 'test')),
          optionalNullable: Optional.defined(null),
        );
        final json = undefinedTest.toMap();
        expect(json, {'optional': 'test', 'optionalNullable': null});
        final undefinedTest2 = CustomTypeUndefinedTestMapper.fromMap(json);
        expect(
          undefinedTest2.optional,
          Optional.defined(CustomType(value: 'test')),
        );
        expect(undefinedTest2.optionalNullable, Optional.defined(null));
      });
    });
  });
}
