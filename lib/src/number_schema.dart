import 'schema.dart';

class NumberSchema extends Schema {
  final num? multipleOf;

  final num? exclusiveMaximum;
  final num? exclusiveMinimum;
  final num? maximum;
  final num? minimum;

  const NumberSchema({
    this.multipleOf,
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.maximum,
    this.minimum,
  })  : assert(exclusiveMaximum == null || maximum == null),
        assert(exclusiveMinimum == null || minimum == null),
        super(SchemaTypes.number);
}
