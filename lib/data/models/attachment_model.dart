import 'dart:io';

class AttachmentModel {
  String? fileName;
  File? file;

  AttachmentModel({
    this.fileName,
    this.file,
  });

  AttachmentModel.fromJson(Map<String, dynamic> json) {
    fileName = json['file_name'];
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file_name': fileName,
      'file': file,
    };
  }
}
