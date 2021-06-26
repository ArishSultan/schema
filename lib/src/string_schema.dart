import 'schema.dart';

enum StringFormat {
  uri,
  iri,
  ipv4,
  ipv6,
  date,
  time,
  email,
  regex,
  dateTime,
  hostname,
  idnEmail,
  idnHostname,
  jsonPointer,
  uriTemplate,
  iriReference,
  uriReference,
  relativeJsonPointer,
}

class StringSchema extends Schema {
  final num? minLength;
  final num? maxLength;
  final String? pattern;

  const StringSchema({this.maxLength, this.minLength, this.pattern});
}
