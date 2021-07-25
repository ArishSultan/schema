import 'package:schema/src/schema.dart';

class ObjectSchema extends Schema {
  final int? maxProperties;
  final int? minProperties;
  final Schema? additionalItems;
  final Set<ObjectSchemaProperty>? properties;

  const ObjectSchema({
    this.properties,
    this.maxProperties,
    this.minProperties,
    this.additionalItems,
  })  : assert(
          maxProperties == null || (properties?.length ?? 0) <= maxProperties,
        ),
        assert(
          minProperties == null || (properties?.length ?? 0) >= minProperties,
        ),
        super(SchemaTypes.object);
}

class ObjectSchemaProperty {
  final String name;
  final Schema value;
  final bool isRequired;

  const ObjectSchemaProperty({
    required this.name,
    required this.value,
    this.isRequired = false,
  });

  @override
  bool operator ==(Object other) {
    if (other is ObjectSchemaProperty) {
      return name == other.name;
    }

    return false;
  }
}
