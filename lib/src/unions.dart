// Copied from the extension_type_unions package with some modifications.
// Uses regular classes instead of extensions. due to limitations of dart_mappable.

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Thrown when an invalid union type value is detected.
///
/// An expression whose static type is a union type of the form
/// `UnionK<X1, ... XK>` and whose value does not have any of the types
/// `X1` .. `XK` is an _invalid_ union type value. This exception is used
/// to report that such a value has been encountered.
class InvalidUnionTypeException implements Exception {
  /// Description of the invalid union type.
  final String type;
  final Object? value;

  InvalidUnionTypeException(this.type, this.value);

  @override
  String toString() => '$type: value has type ${value.runtimeType}';
}

/// Emulate the union of the types [X1] and [X2].
class Union2<X1, X2> {
  final Object? value;

  /// Create a [Union2] value from the first type argument.
  Union2.in1(X1 this.value);

  /// Create a [Union2] value from the second type argument.
  Union2.in2(X2 this.value);

  static Union2<X1, X2> fromObject<X1, X2>(Object? value) {
    if (value is X1) return Union2.in1(value);
    if (value is X2) return Union2.in2(value);
    throw InvalidUnionTypeException("Union2<$X1, $X2>", value);
  }

  /// Return true iff this [Union2] has type [X1] or [X2].
  bool get isValid => value is X1 || value is X2;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  R split<R>(R Function(X1) on1, R Function(X2) on2) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    throw InvalidUnionTypeException("Union2<$X1, $X2>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union2<$X1, $X2>", value);
  }
}

/// Emulate the union of the types [X1], [X2], and [X3].
class Union3<X1, X2, X3> {
  final Object? value;

  /// Create a [Union3] value from the first type argument.
  Union3.in1(X1 this.value);

  /// Create a [Union3] value from the second type argument.
  Union3.in2(X2 this.value);

  /// Create a [Union3] value from the third type argument.
  Union3.in3(X3 this.value);

  static Union3<X1, X2, X3> fromObject<X1, X2, X3>(Object? value) {
    if (value is X1) return Union3.in1(value);
    if (value is X2) return Union3.in2(value);
    if (value is X3) return Union3.in3(value);
    throw InvalidUnionTypeException("Union3<$X1, $X2, $X3>", value);
  }

  /// Return true iff this [Union3] has a type in [X1] .. [X3].
  bool get isValid => value is X1 || value is X2 || value is X3;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  R split<R>(R Function(X1) on1, R Function(X2) on2, R Function(X3) on3) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    throw InvalidUnionTypeException("Union3<$X1, $X2, $X3>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union3<$X1, $X2, $X3>", value);
  }
}

/// Emulate the union of the types [X1] .. [X4].
class Union4<X1, X2, X3, X4> {
  final Object? value;

  /// Create a [Union4] value from the first type argument.
  Union4.in1(X1 this.value);

  /// Create a [Union4] value from the second type argument.
  Union4.in2(X2 this.value);

  /// Create a [Union4] value from the third type argument.
  Union4.in3(X3 this.value);

  /// Create a [Union4] value from the fourth type argument.
  Union4.in4(X4 this.value);

  static Union4<X1, X2, X3, X4> fromObject<X1, X2, X3, X4>(Object? value) {
    if (value is X1) return Union4.in1(value);
    if (value is X2) return Union4.in2(value);
    if (value is X3) return Union4.in3(value);
    if (value is X4) return Union4.in4(value);
    throw InvalidUnionTypeException("Union4<$X1, $X2, $X3, $X4>", value);
  }

  /// Return true iff this [Union4] has a type in [X1] .. [X4].
  bool get isValid => value is X1 || value is X2 || value is X3 || value is X4;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    throw InvalidUnionTypeException("Union4<$X1, $X2, $X3, $X4>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union4<$X1, $X2, $X3, $X4>", value);
  }
}

/// Emulate the union of the types [X1] .. [X5].
class Union5<X1, X2, X3, X4, X5> {
  final Object? value;

  /// Create a [Union5] value from the first type argument.
  Union5.in1(X1 this.value);

  /// Create a [Union5] value from the second type argument.
  Union5.in2(X2 this.value);

  /// Create a [Union5] value from the third type argument.
  Union5.in3(X3 this.value);

  /// Create a [Union5] value from the fourth type argument.
  Union5.in4(X4 this.value);

  /// Create a [Union5] value from the fifth type argument.
  Union5.in5(X5 this.value);

  static Union5<X1, X2, X3, X4, X5> fromObject<X1, X2, X3, X4, X5>(
      Object? value) {
    if (value is X1) return Union5.in1(value);
    if (value is X2) return Union5.in2(value);
    if (value is X3) return Union5.in3(value);
    if (value is X4) return Union5.in4(value);
    if (value is X5) return Union5.in5(value);
    throw InvalidUnionTypeException("Union5<$X1, $X2, $X3, $X4, $X5>", value);
  }

  /// Return true iff this [Union5] has a type in [X1] .. [X5].
  bool get isValid =>
      value is X1 || value is X2 || value is X3 || value is X4 || value is X5;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    throw InvalidUnionTypeException("Union5<$X1, $X2, $X3, $X4, $X5>", value);
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException("Union5<$X1, $X2, $X3, $X4, $X5>", value);
  }
}

/// Emulate the union of the types [X1] .. [X6].
class Union6<X1, X2, X3, X4, X5, X6> {
  final Object? value;

  /// Create a [Union6] value from the first type argument.
  Union6.in1(X1 this.value);

  /// Create a [Union6] value from the second type argument.
  Union6.in2(X2 this.value);

  /// Create a [Union6] value from the third type argument.
  Union6.in3(X3 this.value);

  /// Create a [Union6] value from the fourth type argument.
  Union6.in4(X4 this.value);

  /// Create a [Union6] value from the fifth type argument.
  Union6.in5(X5 this.value);

  /// Create a [Union6] value from the sixth type argument.
  Union6.in6(X6 this.value);

  static Union6<X1, X2, X3, X4, X5, X6> fromObject<X1, X2, X3, X4, X5, X6>(
      Object? value) {
    if (value is X1) return Union6.in1(value);
    if (value is X2) return Union6.in2(value);
    if (value is X3) return Union6.in3(value);
    if (value is X4) return Union6.in4(value);
    if (value is X5) return Union6.in5(value);
    if (value is X6) return Union6.in6(value);
    throw InvalidUnionTypeException(
        "Union6<$X1, $X2, $X3, $X4, $X5, $X6>", value);
  }

  /// Return true iff this [Union6] has a type in [X1] .. [X6].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    throw InvalidUnionTypeException(
      "Union6<$X1, $X2, $X3, $X4, $X5, $X6>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union6<$X1, $X2, $X3, $X4, $X5, $X6>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X7].
class Union7<X1, X2, X3, X4, X5, X6, X7> {
  final Object? value;

  /// Create a [Union7] value from the first type argument.
  Union7.in1(X1 this.value);

  /// Create a [Union7] value from the second type argument.
  Union7.in2(X2 this.value);

  /// Create a [Union7] value from the third type argument.
  Union7.in3(X3 this.value);

  /// Create a [Union7] value from the fourth type argument.
  Union7.in4(X4 this.value);

  /// Create a [Union7] value from the fifth type argument.
  Union7.in5(X5 this.value);

  /// Create a [Union7] value from the sixth type argument.
  Union7.in6(X6 this.value);

  /// Create a [Union7] value from the seventh type argument.
  Union7.in7(X7 this.value);

  static Union7<X1, X2, X3, X4, X5, X6, X7>
      fromObject<X1, X2, X3, X4, X5, X6, X7>(Object? value) {
    if (value is X1) return Union7.in1(value);
    if (value is X2) return Union7.in2(value);
    if (value is X3) return Union7.in3(value);
    if (value is X4) return Union7.in4(value);
    if (value is X5) return Union7.in5(value);
    if (value is X6) return Union7.in6(value);
    if (value is X7) return Union7.in7(value);
    throw InvalidUnionTypeException(
        "Union7<$X1, $X2, $X3, $X4, $X5, $X6, $X7>", value);
  }

  /// Return true iff this [Union7] has a type in [X1] .. [X7].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    throw InvalidUnionTypeException(
      "Union7<$X1, $X2, $X3, $X4, $X5, $X6, $X7>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union7<$X1, $X2, $X3, $X4, $X5, $X6, $X7>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X8].
class Union8<X1, X2, X3, X4, X5, X6, X7, X8> {
  final Object? value;

  /// Create a [Union8] value from the first type argument.
  Union8.in1(X1 this.value);

  /// Create a [Union8] value from the second type argument.
  Union8.in2(X2 this.value);

  /// Create a [Union8] value from the third type argument.
  Union8.in3(X3 this.value);

  /// Create a [Union8] value from the fourth type argument.
  Union8.in4(X4 this.value);

  /// Create a [Union8] value from the fifth type argument.
  Union8.in5(X5 this.value);

  /// Create a [Union8] value from the sixth type argument.
  Union8.in6(X6 this.value);

  /// Create a [Union8] value from the seventh type argument.
  Union8.in7(X7 this.value);

  /// Create a [Union8] value from the eighth type argument.
  Union8.in8(X8 this.value);

  /// Return true iff this [Union8] has a type in [X1] .. [X8].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    throw InvalidUnionTypeException(
      "Union8<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union8<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8>",
      value,
    );
  }
}

/// Emulate the union of the types [X1] .. [X9].
class Union9<X1, X2, X3, X4, X5, X6, X7, X8, X9> {
  final Object? value;

  /// Create a [Union9] value from the first type argument.
  Union9.in1(X1 this.value);

  /// Create a [Union9] value from the second type argument.
  Union9.in2(X2 this.value);

  /// Create a [Union9] value from the third type argument.
  Union9.in3(X3 this.value);

  static Union9<X1, X2, X3, X4, X5, X6, X7, X8, X9>
      fromObject<X1, X2, X3, X4, X5, X6, X7, X8, X9>(Object? value) {
    if (value is X1) return Union9.in1(value);
    if (value is X2) return Union9.in2(value);
    if (value is X3) return Union9.in3(value);
    if (value is X4) return Union9.in4(value);
    if (value is X5) return Union9.in5(value);
    if (value is X6) return Union9.in6(value);
    if (value is X7) return Union9.in7(value);
    if (value is X8) return Union9.in8(value);
    if (value is X9) return Union9.in9(value);
    throw InvalidUnionTypeException(
        "Union9<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9>", value);
  }

  /// Create a [Union9] value from the fourth type argument.
  Union9.in4(X4 this.value);

  /// Create a [Union9] value from the fifth type argument.
  Union9.in5(X5 this.value);

  /// Create a [Union9] value from the sixth type argument.
  Union9.in6(X6 this.value);

  /// Create a [Union9] value from the seventh type argument.
  Union9.in7(X7 this.value);

  /// Create a [Union9] value from the eighth type argument.
  Union9.in8(X8 this.value);

  /// Create a [Union9] value from the ninth type argument.
  Union9.in9(X9 this.value);

  /// Return true iff this [Union9] has a type in [X1] .. [X9].
  bool get isValid =>
      value is X1 ||
      value is X2 ||
      value is X3 ||
      value is X4 ||
      value is X5 ||
      value is X6 ||
      value is X7 ||
      value is X8 ||
      value is X9;

  /// Return the [value] if it has type [X1], otherwise null.
  X1? get as1OrNull => value is X1 ? value as X1 : null;

  /// Return the [value] if it has type [X2], otherwise null.
  X2? get as2OrNull => value is X2 ? value as X2 : null;

  /// Return the [value] if it has type [X3], otherwise null.
  X3? get as3OrNull => value is X3 ? value as X3 : null;

  /// Return the [value] if it has type [X4], otherwise null.
  X4? get as4OrNull => value is X4 ? value as X4 : null;

  /// Return the [value] if it has type [X5], otherwise null.
  X5? get as5OrNull => value is X5 ? value as X5 : null;

  /// Return the [value] if it has type [X6], otherwise null.
  X6? get as6OrNull => value is X6 ? value as X6 : null;

  /// Return the [value] if it has type [X7], otherwise null.
  X7? get as7OrNull => value is X7 ? value as X7 : null;

  /// Return the [value] if it has type [X8], otherwise null.
  X8? get as8OrNull => value is X8 ? value as X8 : null;

  /// Return the [value] if it has type [X9], otherwise null.
  X9? get as9OrNull => value is X9 ? value as X9 : null;

  /// Return the [value] if it has type [X1], otherwise throw.
  X1 get as1 => value as X1;

  /// Return the [value] if it has type [X2], otherwise throw.
  X2 get as2 => value as X2;

  /// Return the [value] if it has type [X3], otherwise throw.
  X3 get as3 => value as X3;

  /// Return the [value] if it has type [X4], otherwise throw.
  X4 get as4 => value as X4;

  /// Return the [value] if it has type [X5], otherwise throw.
  X5 get as5 => value as X5;

  /// Return the [value] if it has type [X6], otherwise throw.
  X6 get as6 => value as X6;

  /// Return the [value] if it has type [X7], otherwise throw.
  X7 get as7 => value as X7;

  /// Return the [value] if it has type [X8], otherwise throw.
  X8 get as8 => value as X8;

  /// Return the [value] if it has type [X9], otherwise throw.
  X9 get as9 => value as X9;

  /// Return type iff the [value] has type [X1].
  bool get is1 => value is X1;

  /// Return type iff the [value] has type [X2].
  bool get is2 => value is X2;

  /// Return type iff the [value] has type [X3].
  bool get is3 => value is X3;

  /// Return type iff the [value] has type [X4].
  bool get is4 => value is X4;

  /// Return type iff the [value] has type [X5].
  bool get is5 => value is X5;

  /// Return type iff the [value] has type [X6].
  bool get is6 => value is X6;

  /// Return type iff the [value] has type [X7].
  bool get is7 => value is X7;

  /// Return type iff the [value] has type [X8].
  bool get is8 => value is X8;

  /// Return type iff the [value] has type [X9].
  bool get is9 => value is X9;

  R split<R>(
    R Function(X1) on1,
    R Function(X2) on2,
    R Function(X3) on3,
    R Function(X4) on4,
    R Function(X5) on5,
    R Function(X6) on6,
    R Function(X7) on7,
    R Function(X8) on8,
    R Function(X9) on9,
  ) {
    var v = value;
    if (v is X1) return on1(v);
    if (v is X2) return on2(v);
    if (v is X3) return on3(v);
    if (v is X4) return on4(v);
    if (v is X5) return on5(v);
    if (v is X6) return on6(v);
    if (v is X7) return on7(v);
    if (v is X8) return on8(v);
    if (v is X9) return on9(v);
    throw InvalidUnionTypeException(
      "Union9<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9>",
      value,
    );
  }

  R? splitNamed<R>({
    R Function(X1)? on1,
    R Function(X2)? on2,
    R Function(X3)? on3,
    R Function(X4)? on4,
    R Function(X5)? on5,
    R Function(X6)? on6,
    R Function(X7)? on7,
    R Function(X8)? on8,
    R Function(X9)? on9,
    R Function(Object?)? onOther,
    R Function(Object?)? onInvalid,
  }) {
    var v = value;
    if (v is X1) return (on1 ?? onOther)?.call(v);
    if (v is X2) return (on2 ?? onOther)?.call(v);
    if (v is X3) return (on3 ?? onOther)?.call(v);
    if (v is X4) return (on4 ?? onOther)?.call(v);
    if (v is X5) return (on5 ?? onOther)?.call(v);
    if (v is X6) return (on6 ?? onOther)?.call(v);
    if (v is X7) return (on7 ?? onOther)?.call(v);
    if (v is X8) return (on8 ?? onOther)?.call(v);
    if (v is X9) return (on9 ?? onOther)?.call(v);
    if (onInvalid != null) return onInvalid(v);
    throw InvalidUnionTypeException(
      "Union9<$X1, $X2, $X3, $X4, $X5, $X6, $X7, $X8, $X9>",
      value,
    );
  }
}
