enum SchemaTypes {
  array,
  object,
  string,
  number,
  boolean,
}

abstract class Schema {
  final SchemaTypes type;
  const Schema(this.type);
}