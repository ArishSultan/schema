import 'package:schema/src/schema.dart';

class ArraySchema extends Schema {
  final int? maxItems;
  final int? minItems;
  final bool? uniqueItems;
  final List<Schema>? items;

  const ArraySchema({
    this.items,
    this.maxItems,
    this.minItems,
    this.uniqueItems,
  }) : super(SchemaTypes.array);
}
