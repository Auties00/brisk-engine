class DownloadItemModel {
  int id;

  String uid;

  String fileName;

  String filePath;

  String downloadUrl;

  final DateTime startDate;

  int contentLength;

  DateTime? finishDate;

  double progress;

  String fileType;

  bool supportsPause;

  String status;

  DownloadItemModel({
    required this.id,
    this.uid = "",
    required this.fileName,
    this.filePath = '',
    required this.downloadUrl,
    required this.startDate,
    this.finishDate,
    required this.progress,
    this.contentLength = 0,
    this.fileType = "other",
    this.supportsPause = false,
    this.status = "In Queue",
  });
}
