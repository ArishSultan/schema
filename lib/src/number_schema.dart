import 'schema.dart';

enum NumberType {
  float,
  number,
  integer,
}

class NumberSchema extends Schema {
  final NumberType type;

  final num? multipleOf;

  final num? exclusiveMaximum;
  final num? exclusiveMinimum;
  final num? maximum;
  final num? minimum;

  const NumberSchema({
    required this.type,
    this.multipleOf,
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.maximum,
    this.minimum,
  });
}
