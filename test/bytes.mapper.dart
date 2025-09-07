// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bytes.dart';

class BytesTestMapper extends ClassMapperBase<BytesTest> {
  BytesTestMapper._();

  static BytesTestMapper? _instance;
  static BytesTestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BytesTestMapper._());
      MapperContainer.globals.useAll([BytesMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'BytesTest';

  static Uint8List _$bytes(BytesTest v) => v.bytes;
  static const Field<BytesTest, Uint8List> _f$bytes = Field('bytes', _$bytes);

  @override
  final MappableFields<BytesTest> fields = const {#bytes: _f$bytes};

  static BytesTest _instantiate(DecodingData data) {
    return BytesTest(bytes: data.dec(_f$bytes));
  }

  @override
  final Function instantiate = _instantiate;

  static BytesTest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BytesTest>(map);
  }

  static BytesTest fromJson(String json) {
    return ensureInitialized().decodeJson<BytesTest>(json);
  }
}

mixin BytesTestMappable {
  String toJson() {
    return BytesTestMapper.ensureInitialized().encodeJson<BytesTest>(
      this as BytesTest,
    );
  }

  Map<String, dynamic> toMap() {
    return BytesTestMapper.ensureInitialized().encodeMap<BytesTest>(
      this as BytesTest,
    );
  }

  BytesTestCopyWith<BytesTest, BytesTest, BytesTest> get copyWith =>
      _BytesTestCopyWithImpl<BytesTest, BytesTest>(
        this as BytesTest,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return BytesTestMapper.ensureInitialized().stringifyValue(
      this as BytesTest,
    );
  }

  @override
  bool operator ==(Object other) {
    return BytesTestMapper.ensureInitialized().equalsValue(
      this as BytesTest,
      other,
    );
  }

  @override
  int get hashCode {
    return BytesTestMapper.ensureInitialized().hashValue(this as BytesTest);
  }
}

extension BytesTestValueCopy<$R, $Out> on ObjectCopyWith<$R, BytesTest, $Out> {
  BytesTestCopyWith<$R, BytesTest, $Out> get $asBytesTest =>
      $base.as((v, t, t2) => _BytesTestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BytesTestCopyWith<$R, $In extends BytesTest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Uint8List? bytes});
  BytesTestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BytesTestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BytesTest, $Out>
    implements BytesTestCopyWith<$R, BytesTest, $Out> {
  _BytesTestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BytesTest> $mapper =
      BytesTestMapper.ensureInitialized();
  @override
  $R call({Uint8List? bytes}) =>
      $apply(FieldCopyWithData({if (bytes != null) #bytes: bytes}));
  @override
  BytesTest $make(CopyWithData data) =>
      BytesTest(bytes: data.get(#bytes, or: $value.bytes));

  @override
  BytesTestCopyWith<$R2, BytesTest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BytesTestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

