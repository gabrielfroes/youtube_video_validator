class YoutubeVideo {
  YoutubeVideo();

  String id;
  String title;
  int length;
  int views;
  String channelID;
  String author;
  String description;
  String tags;
  String thubmnail;
  double rating;

  @override
  String toString() {
    return '$title ($id) - $author';
  }

  String shareUrl() {
    return 'https://youtu.be/$id';
  }

  String channelUrl() {
    return (channelID == null) ? null : 'https://youtube.com/user/$channelID';
  }

  void clear() {
    id = null;
    title = null;
    length = null;
    views = null;
    channelID = null;
    author = null;
    description = null;
    tags = null;
    thubmnail = null;
    rating = null;
  }
}
