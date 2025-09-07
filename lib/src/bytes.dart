import 'dart:typed_data';

import 'package:dart_mappable/dart_mappable.dart';

class BytesMapper extends SimpleMapper<Uint8List> {
  const BytesMapper();

  @override
  Uint8List decode(Object value) {
    return Uint8List.fromList((value as List).cast<int>());
  }

  @override
  Object encode(Uint8List value) {
    return value.toList();
  }
}
