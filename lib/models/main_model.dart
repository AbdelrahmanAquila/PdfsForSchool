class PDFModel {
  String? name;
  String? url;
  // String? uid;

  PDFModel({
    this.name,
    this.url,
    // this.uid
  });

  PDFModel.fromJson(Map<dynamic, dynamic>? json) {
    name = json!['name'];
    url = json['url'];
    // uid = json['uid'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
      // 'uid': uid,
    };
  }
}
