class Picsum {
  final String id;
  final String author;
  final int width;
  final int height;
  final String url;
  final String download_url;

  Picsum(
      {required this.id,
      required this.author,
      required this.width,
      required this.height,
      required this.url,
      required this.download_url});

  //Json 데이터 > Map형으로 변환
  Picsum.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        author = json["author"],
        width = json["width"],
        height = json["height"],
        url = json["url"],
        download_url = json["download_url"];

  //Map형 > Json 데이터로 변환
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "author": author,
      "width": width,
      "height": height,
      "url": url,
      "dounload_url": download_url
    };
  }
}
