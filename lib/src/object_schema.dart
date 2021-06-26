import 'package:schema/src/schema.dart';

class ObjectSchema extends Schema {
  final int? maxProperties;
  final int? minProperties;
  final List<String>? required;
  final Map<String, Schema>? properties;

  final Schema? additionalItems;

  const ObjectSchema({
    this.required,
    this.properties,
    this.maxProperties,
    this.minProperties,
    this.additionalItems
  }) : super(SchemaTypes.object);
}
