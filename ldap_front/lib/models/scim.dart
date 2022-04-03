class Scim {
  final String? resources;
  Scim({this.resources});
}

class Entry {
  String id;
  String? metaString;
  String? startIndex;
  String? totalResults;

  Entry({this.id = "", this.metaString, this.startIndex, this.totalResults});
}

class Meta {
  String resourceType;
  String location;
  String name;
  String userName;
  String schemas;
  Meta(
    this.resourceType,
    this.location,
    this.name,
    this.userName,
    this.schemas,
  );
}
