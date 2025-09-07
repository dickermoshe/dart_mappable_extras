import 'package:dart_mappable/dart_mappable.dart';

/// A type that represents an optional value.
sealed class Optional<T> {
  const Optional();
  const factory Optional.defined(T value) = Defined<T>;

  const factory Optional.undefined() = Undefined<T>;
}

class Undefined<T> extends Optional<T> {
  const Undefined();
  @override
  String toString() {
    return 'Undefined()';
  }

  @override
  bool operator ==(Object other) {
    return other is Undefined;
  }

  @override
  int get hashCode => 0;
}

/// A type that represents a defined value.
class Defined<T> extends Optional<T> {
  final T value;
  const Defined(this.value);
  @override
  String toString() {
    return 'Defined($value)';
  }

  @override
  bool operator ==(Object other) {
    return other is Defined && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

/// A type mapper for the Optional type
class OptionalMapper extends SimpleMapper1<Optional> {
  const OptionalMapper();
  @override
  Optional<T> decode<T>(dynamic value) {
    if (value is Undefined) {
      return const Undefined();
    } else if (value is Defined) {
      return Defined(container.fromValue<T>(value.value));
    } else {
      throw StateError(
        "OptionalMapper applied to invalid value: $value, type: ${value.runtimeType}",
      );
    }
  }

  @override
  dynamic encode<T>(Optional<T> self) {
    if (self is Defined<T>) {
      return container.toValue<T>(self.value);
    } else {
      return const Undefined();
    }
  }

  @override
  Function get typeFactory =>
      <T>(f) => f<Optional<T>>();
}

/// A mapping hook that removes undefined fields from the map.
/// This is useful for mapping to JSON where we don't want to include undefined fields
/// in the output.
/// This should be applied to a class that has an Optional field.
class RemoveUndefinedFields extends MappingHook {
  final List<String> optionalFields;
  const RemoveUndefinedFields(this.optionalFields);

  @override
  Object? afterEncode(Object? value) {
    if (value is Map) {
      // Check if any of the values are undefined before
      // performing what could be a costly copy operation
      if (value.values.any((v) => v == const Undefined())) {
        final filteredMap = {
          for (var entry in value.entries)
            if (entry.value != const Undefined()) entry.key: entry.value,
        };
        return filteredMap.cast<String, dynamic>();
      }
    }
    if (value is! Map) {
      throw 1;
    }
    return value;
  }

  @override
  Object? beforeDecode(Object? value) {
    if (value is Map) {
      final copiedMap = {...value};
      for (var field in optionalFields) {
        if (value.keys.contains(field)) {
          copiedMap[field] = Defined(copiedMap[field]);
        } else {
          copiedMap[field] = const Undefined();
        }
      }
      return copiedMap.cast<String, dynamic>();
    }

    return value;
  }
}
