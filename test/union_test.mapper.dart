// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'union_test.dart';

class UnionTest2Mapper extends ClassMapperBase<UnionTest2> {
  UnionTest2Mapper._();

  static UnionTest2Mapper? _instance;
  static UnionTest2Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UnionTest2Mapper._());
      MapperContainer.globals.useAll(unionMappers);
    }
    return _instance!;
  }

  @override
  final String id = 'UnionTest2';

  static Union2<String, int> _$union(UnionTest2 v) => v.union;
  static const Field<UnionTest2, Union2<String, int>> _f$union = Field(
    'union',
    _$union,
  );

  @override
  final MappableFields<UnionTest2> fields = const {#union: _f$union};

  static UnionTest2 _instantiate(DecodingData data) {
    return UnionTest2(union: data.dec(_f$union));
  }

  @override
  final Function instantiate = _instantiate;

  static UnionTest2 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UnionTest2>(map);
  }

  static UnionTest2 fromJson(String json) {
    return ensureInitialized().decodeJson<UnionTest2>(json);
  }
}

mixin UnionTest2Mappable {
  String toJson() {
    return UnionTest2Mapper.ensureInitialized().encodeJson<UnionTest2>(
      this as UnionTest2,
    );
  }

  Map<String, dynamic> toMap() {
    return UnionTest2Mapper.ensureInitialized().encodeMap<UnionTest2>(
      this as UnionTest2,
    );
  }

  UnionTest2CopyWith<UnionTest2, UnionTest2, UnionTest2> get copyWith =>
      _UnionTest2CopyWithImpl<UnionTest2, UnionTest2>(
        this as UnionTest2,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UnionTest2Mapper.ensureInitialized().stringifyValue(
      this as UnionTest2,
    );
  }

  @override
  bool operator ==(Object other) {
    return UnionTest2Mapper.ensureInitialized().equalsValue(
      this as UnionTest2,
      other,
    );
  }

  @override
  int get hashCode {
    return UnionTest2Mapper.ensureInitialized().hashValue(this as UnionTest2);
  }
}

extension UnionTest2ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UnionTest2, $Out> {
  UnionTest2CopyWith<$R, UnionTest2, $Out> get $asUnionTest2 =>
      $base.as((v, t, t2) => _UnionTest2CopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UnionTest2CopyWith<$R, $In extends UnionTest2, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Union2<String, int>? union});
  UnionTest2CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UnionTest2CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UnionTest2, $Out>
    implements UnionTest2CopyWith<$R, UnionTest2, $Out> {
  _UnionTest2CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UnionTest2> $mapper =
      UnionTest2Mapper.ensureInitialized();
  @override
  $R call({Union2<String, int>? union}) =>
      $apply(FieldCopyWithData({if (union != null) #union: union}));
  @override
  UnionTest2 $make(CopyWithData data) =>
      UnionTest2(union: data.get(#union, or: $value.union));

  @override
  UnionTest2CopyWith<$R2, UnionTest2, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UnionTest2CopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UnionTest3Mapper extends ClassMapperBase<UnionTest3> {
  UnionTest3Mapper._();

  static UnionTest3Mapper? _instance;
  static UnionTest3Mapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UnionTest3Mapper._());
      MapperContainer.globals.useAll(unionMappers);
    }
    return _instance!;
  }

  @override
  final String id = 'UnionTest3';

  static Union3<String, int, bool> _$union(UnionTest3 v) => v.union;
  static const Field<UnionTest3, Union3<String, int, bool>> _f$union = Field(
    'union',
    _$union,
  );

  @override
  final MappableFields<UnionTest3> fields = const {#union: _f$union};

  static UnionTest3 _instantiate(DecodingData data) {
    return UnionTest3(union: data.dec(_f$union));
  }

  @override
  final Function instantiate = _instantiate;

  static UnionTest3 fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UnionTest3>(map);
  }

  static UnionTest3 fromJson(String json) {
    return ensureInitialized().decodeJson<UnionTest3>(json);
  }
}

mixin UnionTest3Mappable {
  String toJson() {
    return UnionTest3Mapper.ensureInitialized().encodeJson<UnionTest3>(
      this as UnionTest3,
    );
  }

  Map<String, dynamic> toMap() {
    return UnionTest3Mapper.ensureInitialized().encodeMap<UnionTest3>(
      this as UnionTest3,
    );
  }

  UnionTest3CopyWith<UnionTest3, UnionTest3, UnionTest3> get copyWith =>
      _UnionTest3CopyWithImpl<UnionTest3, UnionTest3>(
        this as UnionTest3,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UnionTest3Mapper.ensureInitialized().stringifyValue(
      this as UnionTest3,
    );
  }

  @override
  bool operator ==(Object other) {
    return UnionTest3Mapper.ensureInitialized().equalsValue(
      this as UnionTest3,
      other,
    );
  }

  @override
  int get hashCode {
    return UnionTest3Mapper.ensureInitialized().hashValue(this as UnionTest3);
  }
}

extension UnionTest3ValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UnionTest3, $Out> {
  UnionTest3CopyWith<$R, UnionTest3, $Out> get $asUnionTest3 =>
      $base.as((v, t, t2) => _UnionTest3CopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UnionTest3CopyWith<$R, $In extends UnionTest3, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Union3<String, int, bool>? union});
  UnionTest3CopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UnionTest3CopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UnionTest3, $Out>
    implements UnionTest3CopyWith<$R, UnionTest3, $Out> {
  _UnionTest3CopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UnionTest3> $mapper =
      UnionTest3Mapper.ensureInitialized();
  @override
  $R call({Union3<String, int, bool>? union}) =>
      $apply(FieldCopyWithData({if (union != null) #union: union}));
  @override
  UnionTest3 $make(CopyWithData data) =>
      UnionTest3(union: data.get(#union, or: $value.union));

  @override
  UnionTest3CopyWith<$R2, UnionTest3, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UnionTest3CopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CustomTypeUnionTestMapper extends ClassMapperBase<CustomTypeUnionTest> {
  CustomTypeUnionTestMapper._();

  static CustomTypeUnionTestMapper? _instance;
  static CustomTypeUnionTestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomTypeUnionTestMapper._());
      MapperContainer.globals.useAll([...unionMappers, CustomTypeMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'CustomTypeUnionTest';

  static Union2<CustomType, int> _$union(CustomTypeUnionTest v) => v.union;
  static const Field<CustomTypeUnionTest, Union2<CustomType, int>> _f$union =
      Field('union', _$union);

  @override
  final MappableFields<CustomTypeUnionTest> fields = const {#union: _f$union};

  static CustomTypeUnionTest _instantiate(DecodingData data) {
    return CustomTypeUnionTest(union: data.dec(_f$union));
  }

  @override
  final Function instantiate = _instantiate;

  static CustomTypeUnionTest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomTypeUnionTest>(map);
  }

  static CustomTypeUnionTest fromJson(String json) {
    return ensureInitialized().decodeJson<CustomTypeUnionTest>(json);
  }
}

mixin CustomTypeUnionTestMappable {
  String toJson() {
    return CustomTypeUnionTestMapper.ensureInitialized()
        .encodeJson<CustomTypeUnionTest>(this as CustomTypeUnionTest);
  }

  Map<String, dynamic> toMap() {
    return CustomTypeUnionTestMapper.ensureInitialized()
        .encodeMap<CustomTypeUnionTest>(this as CustomTypeUnionTest);
  }

  CustomTypeUnionTestCopyWith<
    CustomTypeUnionTest,
    CustomTypeUnionTest,
    CustomTypeUnionTest
  >
  get copyWith =>
      _CustomTypeUnionTestCopyWithImpl<
        CustomTypeUnionTest,
        CustomTypeUnionTest
      >(this as CustomTypeUnionTest, $identity, $identity);
  @override
  String toString() {
    return CustomTypeUnionTestMapper.ensureInitialized().stringifyValue(
      this as CustomTypeUnionTest,
    );
  }

  @override
  bool operator ==(Object other) {
    return CustomTypeUnionTestMapper.ensureInitialized().equalsValue(
      this as CustomTypeUnionTest,
      other,
    );
  }

  @override
  int get hashCode {
    return CustomTypeUnionTestMapper.ensureInitialized().hashValue(
      this as CustomTypeUnionTest,
    );
  }
}

extension CustomTypeUnionTestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomTypeUnionTest, $Out> {
  CustomTypeUnionTestCopyWith<$R, CustomTypeUnionTest, $Out>
  get $asCustomTypeUnionTest => $base.as(
    (v, t, t2) => _CustomTypeUnionTestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CustomTypeUnionTestCopyWith<
  $R,
  $In extends CustomTypeUnionTest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Union2<CustomType, int>? union});
  CustomTypeUnionTestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CustomTypeUnionTestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomTypeUnionTest, $Out>
    implements CustomTypeUnionTestCopyWith<$R, CustomTypeUnionTest, $Out> {
  _CustomTypeUnionTestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomTypeUnionTest> $mapper =
      CustomTypeUnionTestMapper.ensureInitialized();
  @override
  $R call({Union2<CustomType, int>? union}) =>
      $apply(FieldCopyWithData({if (union != null) #union: union}));
  @override
  CustomTypeUnionTest $make(CopyWithData data) =>
      CustomTypeUnionTest(union: data.get(#union, or: $value.union));

  @override
  CustomTypeUnionTestCopyWith<$R2, CustomTypeUnionTest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CustomTypeUnionTestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

