import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable_extras/dart_mappable_extras.dart';
import 'package:dart_mappable_extras/src/unions.dart';
import 'package:test/test.dart';
part 'union_test.mapper.dart';

@MappableClass(includeCustomMappers: unionMappers)
class UnionTest2 with UnionTest2Mappable {
  final Union2<String, int> union;
  UnionTest2({required this.union});
}

@MappableClass(includeCustomMappers: unionMappers)
class UnionTest3 with UnionTest3Mappable {
  final Union3<String, int, bool> union;
  UnionTest3({required this.union});
}

@MappableClass(includeCustomMappers: unionMappers)
void main() {
  test('union2 mapping test', () {
    final unionTest = UnionTest2(union: Union2.in1('test'));
    final json = unionTest.toMap();
    expect(json, {'union': 'test'});
    final unionTest2 = UnionTest2(union: Union2.in2(1));
    final json2 = unionTest2.toMap();
    expect(json2, {'union': 1});
    final unionTest3 = UnionTest2Mapper.fromMap({'union': 'test'});
    expect(unionTest3.toMap(), {'union': 'test'});
    final unionTest4 = UnionTest2Mapper.fromMap({'union': 1});
    expect(unionTest4.toMap(), {'union': 1});
  });
  test('invalid union2 type test', () {
    expect(() => UnionTest2Mapper.fromMap({'union': true}),
        throwsA(isA<MapperException>()));
  });
  test('union3 mapping test', () {
    final unionTest = UnionTest3(union: Union3.in1('test'));
    final json = unionTest.toMap();
    expect(json, {'union': 'test'});
    final unionTest2 = UnionTest3(union: Union3.in2(1));
    final json2 = unionTest2.toMap();
    expect(json2, {'union': 1});
    final unionTest3 = UnionTest3Mapper.fromMap({'union': 'test'});
    expect(unionTest3.toMap(), {'union': 'test'});
    final unionTest4 = UnionTest3Mapper.fromMap({'union': 1});
    expect(unionTest4.toMap(), {'union': 1});
  });
  test('invalid union3 type test', () {
    expect(() => UnionTest3Mapper.fromMap({'union': 1.0}),
        throwsA(isA<MapperException>()));
  });
}
