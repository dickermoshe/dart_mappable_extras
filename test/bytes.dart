import 'dart:typed_data';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable_extras/dart_mappable_extras.dart';
import 'package:test/test.dart';
part 'bytes.mapper.dart';

@MappableClass(includeCustomMappers: [BytesMapper()])
class BytesTest with BytesTestMappable {
  final Uint8List bytes;
  BytesTest({required this.bytes});
}

void main() {
  test('bytes', () {
    final bytes = Uint8List.fromList([1, 2, 3]);
    final model = BytesTest(bytes: bytes);
    expect(model.bytes, bytes);
  });
}
