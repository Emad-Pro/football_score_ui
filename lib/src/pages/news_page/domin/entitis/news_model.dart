class NewsModel {
  final String newsImage;
  final String newsHour;
  final List<String> newsTag;
  final String newsText;
  final String? newsTextDetails;

  NewsModel(
      {required this.newsImage,
      this.newsTextDetails,
      required this.newsHour,
      required this.newsTag,
      required this.newsText});
}
