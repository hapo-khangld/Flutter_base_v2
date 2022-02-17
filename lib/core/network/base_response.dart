import '../base_object.dart';

class ApiResponse<T> {
  bool success;
  String? message;

  String? code;
  String? status;
  T? data;
  int? count;
  int? totalPage;

  ApiResponse({
    this.success = false,
    this.message,
    this.data,
  });

  ApiResponse<T> parseJson<K>(json, BaseObject? target) {
    // Custom with your base API Object
    final _reponseJson = json['response'];
    final _dataJson = _reponseJson['data'];

    if (target != null && _dataJson != null) {
      try {
        data = (_dataJson is List
            ? _dataJson.map<K>((e) => target.fromJson(e)).toList()
            : target.fromJson(_dataJson)) as T;
      } catch (e) {
        data = null;
      }
    } else {
      data = _dataJson;
    }

    count = _reponseJson["count"] as int?;
    totalPage = _reponseJson["totalPage"] as int?;
    status = _reponseJson["status"] as String?;
    success = status != null && status == "ERROR" ? false : true;
    message = _reponseJson["message"] as String?;

    return this;
  }

  @override
  String toString() {
    return 'success: $success\nmessage: $message\ntotalPage: $totalPage\ncount: $count\ndata: $data';
  }

  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('success', success);
    writeNotNull('message', message);
    writeNotNull('code', code);
    writeNotNull('status', status);
    writeNotNull('data', data);
    writeNotNull('count', count);
    writeNotNull('totalPage', totalPage);

    return val;
  }

  String get getErrorMessage {
    return message ?? 'No error message';
  }
}
