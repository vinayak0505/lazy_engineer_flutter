const String tableUploadData = 'notes';

class UploadFields {
  static final List<String> values = [id, name];
  static const String id = '_id';
  static const String name = 'name';
}

class Upload {
  final int? id;
  final String name;

  const Upload({
    this.id,
    required this.name,
  });

  static Upload fromJson(Map<String, Object?> json) => Upload(
        id: json[UploadFields.id] as int?,
        name: json[UploadFields.name] as String,
      );

  Map<String, Object?> toJson() => {
        UploadFields.id: id,
        UploadFields.name: name,
      };

  Upload copy({
    int? id,
    String? name,
  }) =>
      Upload(
        id: id ?? this.id,
        name: name ?? this.name,
      );
}
