class TrafficResponse {
  final String? line;
  final String? slug;
  final String? title;
  final String? message;

  TrafficResponse({
    this.line,
    this.slug,
    this.title,
    this.message,
  });

  factory TrafficResponse.fromJson(dynamic json) {
    if (json == null) {
      return TrafficResponse();
    }

    return TrafficResponse(
      line: json["line"],
      slug: json["slug"],
      title: json["title"],
      message: json["message"],
    );
  }
}
