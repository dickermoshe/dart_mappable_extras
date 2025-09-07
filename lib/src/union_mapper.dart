import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable_extras/src/unions.dart';
import 'package:collection/collection.dart';

abstract class _SimpleMapperBase<T extends Object> extends MapperBase<T> {
  const _SimpleMapperBase();

  static MapperContainer? _container;
  MapperContainer get container {
    assert(
      _container != null,
      'SimpleMapper.container can only be accessed inside the decode() or encode() functions.',
    );
    return _container!;
  }

  T _decode(Object value, DecodingContext context);
  Object? _encode(T value, EncodingContext context);

  @override
  T decoder(Object value, DecodingContext context) {
    _container = context.container;
    try {
      return _decode(value, context);
    } finally {
      _container = null;
    }
  }

  @override
  Object? encoder(T value, EncodingContext context) {
    _container = context.container;
    try {
      return _encode(value, context);
    } finally {
      _container = null;
    }
  }

  @override
  bool equals(value, other, MappingContext context) => value == other;

  @override
  int hash(T value, MappingContext context) => value.hashCode;

  @override
  String stringify(T value, MappingContext context) => value.toString();
}

abstract class _SimpleMapper2Bounded<T extends Object, B1, B2>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper2Bounded();

  T decode<A extends B1, B extends B2>(Object value);

  /// Override as `Object? encode<A, B>(MyClass<A, B> self)`
  Object? encode<A extends B1, B extends B2>(covariant T self);

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 2);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 2);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper2<T extends Object>
    extends _SimpleMapper2Bounded<T, dynamic, dynamic> {
  const _SimpleMapper2();

  @override
  T decode<A, B>(Object value);

  @override
  Object? encode<A, B>(covariant T self);
}

abstract class _SimpleMapper3Bounded<T extends Object, B1, B2, B3>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper3Bounded();

  T decode<A extends B1, B extends B2, C extends B3>(Object value);

  /// Override as `Object? encode<A, B>(MyClass<A, B> self)`
  Object? encode<A extends B1, B extends B2, C extends B3>(covariant T self);

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 3);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 3);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper3<T extends Object>
    extends _SimpleMapper3Bounded<T, dynamic, dynamic, dynamic> {
  const _SimpleMapper3();

  @override
  T decode<A, B, C>(Object value);

  @override
  Object? encode<A, B, C>(covariant T self);
}

abstract class _SimpleMapper4Bounded<T extends Object, B1, B2, B3, B4>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper4Bounded();

  T decode<A extends B1, B extends B2, C extends B3, D extends B4>(
    Object value,
  );

  /// Override as `Object? encode<A, B, C, D>(MyClass<A, B, C, D> self)`
  Object? encode<A extends B1, B extends B2, C extends B3, D extends B4>(
    covariant T self,
  );

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 4);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 4);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper4<T extends Object>
    extends _SimpleMapper4Bounded<T, dynamic, dynamic, dynamic, dynamic> {
  const _SimpleMapper4();

  @override
  T decode<A, B, C, D>(Object value);

  @override
  Object? encode<A, B, C, D>(covariant T self);
}

abstract class _SimpleMapper5Bounded<T extends Object, B1, B2, B3, B4, B5>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper5Bounded();

  T decode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5
  >(Object value);

  /// Override as `Object? encode<A, B, C, D, E>(MyClass<A, B, C, D, E> self)`
  Object? encode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5
  >(covariant T self);

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 5);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 5);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper5<T extends Object>
    extends
        _SimpleMapper5Bounded<T, dynamic, dynamic, dynamic, dynamic, dynamic> {
  const _SimpleMapper5();

  @override
  T decode<A, B, C, D, E>(Object value);

  @override
  Object? encode<A, B, C, D, E>(covariant T self);
}

abstract class _SimpleMapper6Bounded<T extends Object, B1, B2, B3, B4, B5, B6>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper6Bounded();

  T decode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6
  >(Object value);

  /// Override as `Object? encode<A, B, C, D, E, F>(MyClass<A, B, C, D, E, F> self)`
  Object? encode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6
  >(covariant T self);

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 6);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 6);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper6<T extends Object>
    extends
        _SimpleMapper6Bounded<
          T,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic
        > {
  const _SimpleMapper6();

  @override
  T decode<A, B, C, D, E, F>(Object value);

  @override
  Object? encode<A, B, C, D, E, F>(covariant T self);
}

abstract class _SimpleMapper7Bounded<
  T extends Object,
  B1,
  B2,
  B3,
  B4,
  B5,
  B6,
  B7
>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper7Bounded();

  T decode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6,
    G extends B7
  >(Object value);

  /// Override as `Object? encode<A, B, C, D, E, F, G>(MyClass<A, B, C, D, E, F, G> self)`
  Object? encode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6,
    G extends B7
  >(covariant T self);

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 7);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 7);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper7<T extends Object>
    extends
        _SimpleMapper7Bounded<
          T,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic
        > {
  const _SimpleMapper7();

  @override
  T decode<A, B, C, D, E, F, G>(Object value);

  @override
  Object? encode<A, B, C, D, E, F, G>(covariant T self);
}

abstract class _SimpleMapper8Bounded<
  T extends Object,
  B1,
  B2,
  B3,
  B4,
  B5,
  B6,
  B7,
  B8
>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper8Bounded();

  T decode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6,
    G extends B7,
    H extends B8
  >(Object value);

  /// Override as `Object? encode<A, B, C, D, E, F, G, H>(MyClass<A, B, C, D, E, F, G, H> self)`
  Object? encode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6,
    G extends B7,
    H extends B8
  >(covariant T self);

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 8);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 8);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper8<T extends Object>
    extends
        _SimpleMapper8Bounded<
          T,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic
        > {
  const _SimpleMapper8();

  @override
  T decode<A, B, C, D, E, F, G, H>(Object value);

  @override
  Object? encode<A, B, C, D, E, F, G, H>(covariant T self);
}

abstract class _SimpleMapper9Bounded<
  T extends Object,
  B1,
  B2,
  B3,
  B4,
  B5,
  B6,
  B7,
  B8,
  B9
>
    extends _SimpleMapperBase<T> {
  const _SimpleMapper9Bounded();

  T decode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6,
    G extends B7,
    H extends B8,
    I extends B9
  >(Object value);

  /// Override as `Object? encode<A, B, C, D, E, F, G, H, I>(MyClass<A, B, C, D, E, F, G, H, I> self)`
  Object? encode<
    A extends B1,
    B extends B2,
    C extends B3,
    D extends B4,
    E extends B5,
    F extends B6,
    G extends B7,
    H extends B8,
    I extends B9
  >(covariant T self);

  @override
  T _decode(Object value, DecodingContext context) {
    assert(context.args.length == 9);
    return context.callWith(decode, value);
  }

  @override
  Object? _encode(T value, EncodingContext context) {
    assert(context.args.length == 9);
    return context.callWith(encode, value);
  }
}

abstract class _SimpleMapper9<T extends Object>
    extends
        _SimpleMapper9Bounded<
          T,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic,
          dynamic
        > {
  const _SimpleMapper9();

  @override
  T decode<A, B, C, D, E, F, G, H, I>(Object value);

  @override
  Object? encode<A, B, C, D, E, F, G, H, I>(covariant T self);
}

/// A Type Mapper for the Union2 type
class Union2Mapper extends _SimpleMapper2<Union2> {
  const Union2Mapper();

  @override
  Union2<A, B> decode<A, B>(Object value) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union2.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union2.in2(bMapper.decodeValue<B>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union2.in1(value as A);
    } else if (value is B) {
      return Union2.in2(value as B);
    } else {
      throw InvalidUnionTypeException("Union2<$A, $B>", value);
    }
  }

  @override
  Object? encode<A, B>(Union2<A, B> self) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else {
      throw InvalidUnionTypeException("Union2<$A, $B>", self.value);
    }
  }

  @override
  Function get typeFactory =>
      <A, B>(f) => f<Union2<A, B>>();
}

/// A Type Mapper for the Union3 type
class Union3Mapper extends _SimpleMapper3<Union3> {
  const Union3Mapper();

  @override
  Union3<A, B, C> decode<A, B, C>(Object value) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union3.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union3.in2(bMapper.decodeValue<B>(value));
    }
    final cMapper = container.mapperForType(C);
    if (cMapper != null) {
      return Union3.in3(cMapper.decodeValue<C>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union3.in1(value as A);
    } else if (value is B) {
      return Union3.in2(value as B);
    } else if (value is C) {
      return Union3.in3(value as C);
    } else {
      throw InvalidUnionTypeException("Union3<$A, $B, $C>", value);
    }
  }

  @override
  Object? encode<A, B, C>(Union3<A, B, C> self) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else if (self.is3) {
      return container.toValue<C>(self.as3);
    } else {
      throw InvalidUnionTypeException("Union3<$A, $B, $C>", self.value);
    }
  }

  @override
  Function get typeFactory =>
      <A, B, C>(f) => f<Union3<A, B, C>>();
}

/// A Type Mapper for the Union4 type
class Union4Mapper extends _SimpleMapper4<Union4> {
  const Union4Mapper();

  @override
  Union4<A, B, C, D> decode<A, B, C, D>(Object value) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union4.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union4.in2(bMapper.decodeValue<B>(value));
    }
    final cMapper = container.mapperForType(C);
    if (cMapper != null) {
      return Union4.in3(cMapper.decodeValue<C>(value));
    }
    final dMapper = container.mapperForType(D);
    if (dMapper != null) {
      return Union4.in4(dMapper.decodeValue<D>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union4.in1(value as A);
    } else if (value is B) {
      return Union4.in2(value as B);
    } else if (value is C) {
      return Union4.in3(value as C);
    } else if (value is D) {
      return Union4.in4(value as D);
    } else {
      throw InvalidUnionTypeException("Union4<$A, $B, $C, $D>", value);
    }
  }

  @override
  Object? encode<A, B, C, D>(Union4<A, B, C, D> self) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else if (self.is3) {
      return container.toValue<C>(self.as3);
    } else if (self.is4) {
      return container.toValue<D>(self.as4);
    } else {
      throw InvalidUnionTypeException("Union4<$A, $B, $C, $D>", self.value);
    }
  }

  @override
  Function get typeFactory =>
      <A, B, C, D>(f) => f<Union4<A, B, C, D>>();
}

/// A Type Mapper for the Union5 type
class Union5Mapper extends _SimpleMapper5<Union5> {
  const Union5Mapper();

  @override
  Union5<A, B, C, D, E> decode<A, B, C, D, E>(Object value) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union5.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union5.in2(bMapper.decodeValue<B>(value));
    }
    final cMapper = container.mapperForType(C);
    if (cMapper != null) {
      return Union5.in3(cMapper.decodeValue<C>(value));
    }
    final dMapper = container.mapperForType(D);
    if (dMapper != null) {
      return Union5.in4(dMapper.decodeValue<D>(value));
    }
    final eMapper = container.mapperForType(E);
    if (eMapper != null) {
      return Union5.in5(eMapper.decodeValue<E>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union5.in1(value as A);
    } else if (value is B) {
      return Union5.in2(value as B);
    } else if (value is C) {
      return Union5.in3(value as C);
    } else if (value is D) {
      return Union5.in4(value as D);
    } else if (value is E) {
      return Union5.in5(value as E);
    } else {
      throw InvalidUnionTypeException("Union5<$A, $B, $C, $D, $E>", value);
    }
  }

  @override
  Object? encode<A, B, C, D, E>(Union5<A, B, C, D, E> self) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else if (self.is3) {
      return container.toValue<C>(self.as3);
    } else if (self.is4) {
      return container.toValue<D>(self.as4);
    } else if (self.is5) {
      return container.toValue<E>(self.as5);
    } else {
      throw InvalidUnionTypeException("Union5<$A, $B, $C, $D, $E>", self.value);
    }
  }

  @override
  Function get typeFactory =>
      <A, B, C, D, E>(f) => f<Union5<A, B, C, D, E>>();
}

/// A Type Mapper for the Union6 type
class Union6Mapper extends _SimpleMapper6<Union6> {
  const Union6Mapper();

  @override
  Union6<A, B, C, D, E, F> decode<A, B, C, D, E, F>(Object value) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union6.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union6.in2(bMapper.decodeValue<B>(value));
    }
    final cMapper = container.mapperForType(C);
    if (cMapper != null) {
      return Union6.in3(cMapper.decodeValue<C>(value));
    }
    final dMapper = container.mapperForType(D);
    if (dMapper != null) {
      return Union6.in4(dMapper.decodeValue<D>(value));
    }
    final eMapper = container.mapperForType(E);
    if (eMapper != null) {
      return Union6.in5(eMapper.decodeValue<E>(value));
    }
    final fMapper = container.mapperForType(F);
    if (fMapper != null) {
      return Union6.in6(fMapper.decodeValue<F>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union6.in1(value as A);
    } else if (value is B) {
      return Union6.in2(value as B);
    } else if (value is C) {
      return Union6.in3(value as C);
    } else if (value is D) {
      return Union6.in4(value as D);
    } else if (value is E) {
      return Union6.in5(value as E);
    } else if (value is F) {
      return Union6.in6(value as F);
    } else {
      throw InvalidUnionTypeException("Union6<$A, $B, $C, $D, $E, $F>", value);
    }
  }

  @override
  Object? encode<A, B, C, D, E, F>(Union6<A, B, C, D, E, F> self) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else if (self.is3) {
      return container.toValue<C>(self.as3);
    } else if (self.is4) {
      return container.toValue<D>(self.as4);
    } else if (self.is5) {
      return container.toValue<E>(self.as5);
    } else if (self.is6) {
      return container.toValue<F>(self.as6);
    } else {
      throw InvalidUnionTypeException(
        "Union6<$A, $B, $C, $D, $E, $F>",
        self.value,
      );
    }
  }

  @override
  Function get typeFactory =>
      <A, B, C, D, E, F>(f) => f<Union6<A, B, C, D, E, F>>();
}

/// A Type Mapper for the Union7 type
class Union7Mapper extends _SimpleMapper7<Union7> {
  const Union7Mapper();

  @override
  Union7<A, B, C, D, E, F, G> decode<A, B, C, D, E, F, G>(Object value) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union7.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union7.in2(bMapper.decodeValue<B>(value));
    }
    final cMapper = container.mapperForType(C);
    if (cMapper != null) {
      return Union7.in3(cMapper.decodeValue<C>(value));
    }
    final dMapper = container.mapperForType(D);
    if (dMapper != null) {
      return Union7.in4(dMapper.decodeValue<D>(value));
    }
    final eMapper = container.mapperForType(E);
    if (eMapper != null) {
      return Union7.in5(eMapper.decodeValue<E>(value));
    }
    final fMapper = container.mapperForType(F);
    if (fMapper != null) {
      return Union7.in6(fMapper.decodeValue<F>(value));
    }
    final gMapper = container.mapperForType(G);
    if (gMapper != null) {
      return Union7.in7(gMapper.decodeValue<G>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union7.in1(value as A);
    } else if (value is B) {
      return Union7.in2(value as B);
    } else if (value is C) {
      return Union7.in3(value as C);
    } else if (value is D) {
      return Union7.in4(value as D);
    } else if (value is E) {
      return Union7.in5(value as E);
    } else if (value is F) {
      return Union7.in6(value as F);
    } else if (value is G) {
      return Union7.in7(value as G);
    } else {
      throw InvalidUnionTypeException(
        "Union7<$A, $B, $C, $D, $E, $F, $G>",
        value,
      );
    }
  }

  @override
  Object? encode<A, B, C, D, E, F, G>(Union7<A, B, C, D, E, F, G> self) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else if (self.is3) {
      return container.toValue<C>(self.as3);
    } else if (self.is4) {
      return container.toValue<D>(self.as4);
    } else if (self.is5) {
      return container.toValue<E>(self.as5);
    } else if (self.is6) {
      return container.toValue<F>(self.as6);
    } else if (self.is7) {
      return container.toValue<G>(self.as7);
    } else {
      throw InvalidUnionTypeException(
        "Union7<$A, $B, $C, $D, $E, $F, $G>",
        self.value,
      );
    }
  }

  @override
  Function get typeFactory =>
      <A, B, C, D, E, F, G>(f) => f<Union7<A, B, C, D, E, F, G>>();
}

/// A Type Mapper for the Union8 type
class Union8Mapper extends _SimpleMapper8<Union8> {
  const Union8Mapper();

  @override
  Union8<A, B, C, D, E, F, G, H> decode<A, B, C, D, E, F, G, H>(Object value) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union8.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union8.in2(bMapper.decodeValue<B>(value));
    }
    final cMapper = container.mapperForType(C);
    if (cMapper != null) {
      return Union8.in3(cMapper.decodeValue<C>(value));
    }
    final dMapper = container.mapperForType(D);
    if (dMapper != null) {
      return Union8.in4(dMapper.decodeValue<D>(value));
    }
    final eMapper = container.mapperForType(E);
    if (eMapper != null) {
      return Union8.in5(eMapper.decodeValue<E>(value));
    }
    final fMapper = container.mapperForType(F);
    if (fMapper != null) {
      return Union8.in6(fMapper.decodeValue<F>(value));
    }
    final gMapper = container.mapperForType(G);
    if (gMapper != null) {
      return Union8.in7(gMapper.decodeValue<G>(value));
    }
    final hMapper = container.mapperForType(H);
    if (hMapper != null) {
      return Union8.in8(hMapper.decodeValue<H>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union8.in1(value as A);
    } else if (value is B) {
      return Union8.in2(value as B);
    } else if (value is C) {
      return Union8.in3(value as C);
    } else if (value is D) {
      return Union8.in4(value as D);
    } else if (value is E) {
      return Union8.in5(value as E);
    } else if (value is F) {
      return Union8.in6(value as F);
    } else if (value is G) {
      return Union8.in7(value as G);
    } else if (value is H) {
      return Union8.in8(value as H);
    } else {
      throw InvalidUnionTypeException(
        "Union8<$A, $B, $C, $D, $E, $F, $G, $H>",
        value,
      );
    }
  }

  @override
  Object? encode<A, B, C, D, E, F, G, H>(Union8<A, B, C, D, E, F, G, H> self) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else if (self.is3) {
      return container.toValue<C>(self.as3);
    } else if (self.is4) {
      return container.toValue<D>(self.as4);
    } else if (self.is5) {
      return container.toValue<E>(self.as5);
    } else if (self.is6) {
      return container.toValue<F>(self.as6);
    } else if (self.is7) {
      return container.toValue<G>(self.as7);
    } else if (self.is8) {
      return container.toValue<H>(self.as8);
    } else {
      throw InvalidUnionTypeException(
        "Union8<$A, $B, $C, $D, $E, $F, $G, $H>",
        self.value,
      );
    }
  }

  @override
  Function get typeFactory =>
      <A, B, C, D, E, F, G, H>(f) => f<Union8<A, B, C, D, E, F, G, H>>();
}

/// A Type Mapper for the Union9 type
class Union9Mapper extends _SimpleMapper9<Union9> {
  const Union9Mapper();

  @override
  Union9<A, B, C, D, E, F, G, H, I> decode<A, B, C, D, E, F, G, H, I>(
    Object value,
  ) {
    /// First try to use the custom mapper for the type.
    final aMapper = container.mapperForType(A);
    if (aMapper != null) {
      return Union9.in1(aMapper.decodeValue<A>(value));
    }
    final bMapper = container.mapperForType(B);
    if (bMapper != null) {
      return Union9.in2(bMapper.decodeValue<B>(value));
    }
    final cMapper = container.mapperForType(C);
    if (cMapper != null) {
      return Union9.in3(cMapper.decodeValue<C>(value));
    }
    final dMapper = container.mapperForType(D);
    if (dMapper != null) {
      return Union9.in4(dMapper.decodeValue<D>(value));
    }
    final eMapper = container.mapperForType(E);
    if (eMapper != null) {
      return Union9.in5(eMapper.decodeValue<E>(value));
    }
    final fMapper = container.mapperForType(F);
    if (fMapper != null) {
      return Union9.in6(fMapper.decodeValue<F>(value));
    }
    final gMapper = container.mapperForType(G);
    if (gMapper != null) {
      return Union9.in7(gMapper.decodeValue<G>(value));
    }
    final hMapper = container.mapperForType(H);
    if (hMapper != null) {
      return Union9.in8(hMapper.decodeValue<H>(value));
    }
    final iMapper = container.mapperForType(I);
    if (iMapper != null) {
      return Union9.in9(iMapper.decodeValue<I>(value));
    }

    /// If no custom mapper is found, try to use the default mapper.
    if (value is A) {
      return Union9.in1(value as A);
    } else if (value is B) {
      return Union9.in2(value as B);
    } else if (value is C) {
      return Union9.in3(value as C);
    } else if (value is D) {
      return Union9.in4(value as D);
    } else if (value is E) {
      return Union9.in5(value as E);
    } else if (value is F) {
      return Union9.in6(value as F);
    } else if (value is G) {
      return Union9.in7(value as G);
    } else if (value is H) {
      return Union9.in8(value as H);
    } else if (value is I) {
      return Union9.in9(value as I);
    } else {
      throw InvalidUnionTypeException(
        "Union9<$A, $B, $C, $D, $E, $F, $G, $H, $I>",
        value,
      );
    }
  }

  @override
  Object? encode<A, B, C, D, E, F, G, H, I>(
    Union9<A, B, C, D, E, F, G, H, I> self,
  ) {
    if (self.is1) {
      return container.toValue<A>(self.as1);
    } else if (self.is2) {
      return container.toValue<B>(self.as2);
    } else if (self.is3) {
      return container.toValue<C>(self.as3);
    } else if (self.is4) {
      return container.toValue<D>(self.as4);
    } else if (self.is5) {
      return container.toValue<E>(self.as5);
    } else if (self.is6) {
      return container.toValue<F>(self.as6);
    } else if (self.is7) {
      return container.toValue<G>(self.as7);
    } else if (self.is8) {
      return container.toValue<H>(self.as8);
    } else if (self.is9) {
      return container.toValue<I>(self.as9);
    } else {
      throw InvalidUnionTypeException(
        "Union9<$A, $B, $C, $D, $E, $F, $G, $H, $I>",
        self.value,
      );
    }
  }

  @override
  Function get typeFactory =>
      <A, B, C, D, E, F, G, H, I>(f) => f<Union9<A, B, C, D, E, F, G, H, I>>();
}

/// Type Mappers for all the union types
const unionMappers = <MapperBase>[
  Union2Mapper(),
  Union3Mapper(),
  Union4Mapper(),
  Union5Mapper(),
  Union6Mapper(),
  Union7Mapper(),
  Union8Mapper(),
  Union9Mapper(),
];

extension on MapperContainer {
  /// Given a list of types, return the first mapper that is for one of the types.
  /// If no mapper is found, return null.
  MapperBase? mapperForType(Type type) {
    return getAll().firstWhereOrNull((e) => e.isFor(type));
  }
}
