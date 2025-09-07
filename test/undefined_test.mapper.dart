// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'undefined_test.dart';

class UndefinedTestMapper extends ClassMapperBase<UndefinedTest> {
  UndefinedTestMapper._();

  static UndefinedTestMapper? _instance;
  static UndefinedTestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UndefinedTestMapper._());
      MapperContainer.globals.useAll([OptionalMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'UndefinedTest';

  static Optional<String> _$optional(UndefinedTest v) => v.optional;
  static const Field<UndefinedTest, Optional<String>> _f$optional = Field(
    'optional',
    _$optional,
  );
  static Optional<int?> _$optionalNullable(UndefinedTest v) =>
      v.optionalNullable;
  static const Field<UndefinedTest, Optional<int?>> _f$optionalNullable = Field(
    'optionalNullable',
    _$optionalNullable,
  );

  @override
  final MappableFields<UndefinedTest> fields = const {
    #optional: _f$optional,
    #optionalNullable: _f$optionalNullable,
  };

  @override
  final MappingHook hook = const RemoveUndefinedFields([
    "optional",
    "optionalNullable",
  ]);
  static UndefinedTest _instantiate(DecodingData data) {
    return UndefinedTest(
      optional: data.dec(_f$optional),
      optionalNullable: data.dec(_f$optionalNullable),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UndefinedTest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UndefinedTest>(map);
  }

  static UndefinedTest fromJson(String json) {
    return ensureInitialized().decodeJson<UndefinedTest>(json);
  }
}

mixin UndefinedTestMappable {
  String toJson() {
    return UndefinedTestMapper.ensureInitialized().encodeJson<UndefinedTest>(
      this as UndefinedTest,
    );
  }

  Map<String, dynamic> toMap() {
    return UndefinedTestMapper.ensureInitialized().encodeMap<UndefinedTest>(
      this as UndefinedTest,
    );
  }

  UndefinedTestCopyWith<UndefinedTest, UndefinedTest, UndefinedTest>
  get copyWith => _UndefinedTestCopyWithImpl<UndefinedTest, UndefinedTest>(
    this as UndefinedTest,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return UndefinedTestMapper.ensureInitialized().stringifyValue(
      this as UndefinedTest,
    );
  }

  @override
  bool operator ==(Object other) {
    return UndefinedTestMapper.ensureInitialized().equalsValue(
      this as UndefinedTest,
      other,
    );
  }

  @override
  int get hashCode {
    return UndefinedTestMapper.ensureInitialized().hashValue(
      this as UndefinedTest,
    );
  }
}

extension UndefinedTestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UndefinedTest, $Out> {
  UndefinedTestCopyWith<$R, UndefinedTest, $Out> get $asUndefinedTest =>
      $base.as((v, t, t2) => _UndefinedTestCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UndefinedTestCopyWith<$R, $In extends UndefinedTest, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Optional<String>? optional, Optional<int?>? optionalNullable});
  UndefinedTestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UndefinedTestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UndefinedTest, $Out>
    implements UndefinedTestCopyWith<$R, UndefinedTest, $Out> {
  _UndefinedTestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UndefinedTest> $mapper =
      UndefinedTestMapper.ensureInitialized();
  @override
  $R call({Optional<String>? optional, Optional<int?>? optionalNullable}) =>
      $apply(
        FieldCopyWithData({
          if (optional != null) #optional: optional,
          if (optionalNullable != null) #optionalNullable: optionalNullable,
        }),
      );
  @override
  UndefinedTest $make(CopyWithData data) => UndefinedTest(
    optional: data.get(#optional, or: $value.optional),
    optionalNullable: data.get(#optionalNullable, or: $value.optionalNullable),
  );

  @override
  UndefinedTestCopyWith<$R2, UndefinedTest, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UndefinedTestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CustomTypeUndefinedTestMapper
    extends ClassMapperBase<CustomTypeUndefinedTest> {
  CustomTypeUndefinedTestMapper._();

  static CustomTypeUndefinedTestMapper? _instance;
  static CustomTypeUndefinedTestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = CustomTypeUndefinedTestMapper._(),
      );
      MapperContainer.globals.useAll([OptionalMapper(), CustomTypeMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'CustomTypeUndefinedTest';

  static Optional<CustomType> _$optional(CustomTypeUndefinedTest v) =>
      v.optional;
  static const Field<CustomTypeUndefinedTest, Optional<CustomType>>
  _f$optional = Field('optional', _$optional);
  static Optional<int?> _$optionalNullable(CustomTypeUndefinedTest v) =>
      v.optionalNullable;
  static const Field<CustomTypeUndefinedTest, Optional<int?>>
  _f$optionalNullable = Field('optionalNullable', _$optionalNullable);

  @override
  final MappableFields<CustomTypeUndefinedTest> fields = const {
    #optional: _f$optional,
    #optionalNullable: _f$optionalNullable,
  };

  @override
  final MappingHook hook = const RemoveUndefinedFields([
    "optional",
    "optionalNullable",
  ]);
  static CustomTypeUndefinedTest _instantiate(DecodingData data) {
    return CustomTypeUndefinedTest(
      optional: data.dec(_f$optional),
      optionalNullable: data.dec(_f$optionalNullable),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CustomTypeUndefinedTest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomTypeUndefinedTest>(map);
  }

  static CustomTypeUndefinedTest fromJson(String json) {
    return ensureInitialized().decodeJson<CustomTypeUndefinedTest>(json);
  }
}

mixin CustomTypeUndefinedTestMappable {
  String toJson() {
    return CustomTypeUndefinedTestMapper.ensureInitialized()
        .encodeJson<CustomTypeUndefinedTest>(this as CustomTypeUndefinedTest);
  }

  Map<String, dynamic> toMap() {
    return CustomTypeUndefinedTestMapper.ensureInitialized()
        .encodeMap<CustomTypeUndefinedTest>(this as CustomTypeUndefinedTest);
  }

  CustomTypeUndefinedTestCopyWith<
    CustomTypeUndefinedTest,
    CustomTypeUndefinedTest,
    CustomTypeUndefinedTest
  >
  get copyWith =>
      _CustomTypeUndefinedTestCopyWithImpl<
        CustomTypeUndefinedTest,
        CustomTypeUndefinedTest
      >(this as CustomTypeUndefinedTest, $identity, $identity);
  @override
  String toString() {
    return CustomTypeUndefinedTestMapper.ensureInitialized().stringifyValue(
      this as CustomTypeUndefinedTest,
    );
  }

  @override
  bool operator ==(Object other) {
    return CustomTypeUndefinedTestMapper.ensureInitialized().equalsValue(
      this as CustomTypeUndefinedTest,
      other,
    );
  }

  @override
  int get hashCode {
    return CustomTypeUndefinedTestMapper.ensureInitialized().hashValue(
      this as CustomTypeUndefinedTest,
    );
  }
}

extension CustomTypeUndefinedTestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomTypeUndefinedTest, $Out> {
  CustomTypeUndefinedTestCopyWith<$R, CustomTypeUndefinedTest, $Out>
  get $asCustomTypeUndefinedTest => $base.as(
    (v, t, t2) => _CustomTypeUndefinedTestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CustomTypeUndefinedTestCopyWith<
  $R,
  $In extends CustomTypeUndefinedTest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Optional<CustomType>? optional, Optional<int?>? optionalNullable});
  CustomTypeUndefinedTestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CustomTypeUndefinedTestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomTypeUndefinedTest, $Out>
    implements
        CustomTypeUndefinedTestCopyWith<$R, CustomTypeUndefinedTest, $Out> {
  _CustomTypeUndefinedTestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomTypeUndefinedTest> $mapper =
      CustomTypeUndefinedTestMapper.ensureInitialized();
  @override
  $R call({Optional<CustomType>? optional, Optional<int?>? optionalNullable}) =>
      $apply(
        FieldCopyWithData({
          if (optional != null) #optional: optional,
          if (optionalNullable != null) #optionalNullable: optionalNullable,
        }),
      );
  @override
  CustomTypeUndefinedTest $make(CopyWithData data) => CustomTypeUndefinedTest(
    optional: data.get(#optional, or: $value.optional),
    optionalNullable: data.get(#optionalNullable, or: $value.optionalNullable),
  );

  @override
  CustomTypeUndefinedTestCopyWith<$R2, CustomTypeUndefinedTest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CustomTypeUndefinedTestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

