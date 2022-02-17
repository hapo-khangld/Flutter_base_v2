import '../../core/base_object.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file_library.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class FileLibrary extends BaseObject {
  final String? id;
  final String? originalFileName;
  final String? fileName;
  final String? contentType;
  final String? url;
  final int? fileSize;

  FileLibrary(
      {this.id,
      this.originalFileName,
      this.fileName,
      this.contentType,
      this.url,
      this.fileSize});

  @override
  fromJson(json) {
    return FileLibrary.fromJson(json);
  }

  factory FileLibrary.fromJson(Map<String, dynamic> json) =>
      _$FileLibraryFromJson(json);

  Map<String, dynamic> toJson() => _$FileLibraryToJson(this);

  @override
  List<Object?> get props =>
      [id, originalFileName, fileName, url, contentType, fileName];
}
