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

  void fromJson(Map<String, dynamic> json) {
    id = json['videoId'];
    title = json['title'].toString().replaceAll('+', ' ');
    length = int.tryParse(json['lengthSeconds']);
    views = int.tryParse(json['viewCount']);
    channelID = json['channelId'];
    author = json['author'].toString().replaceAll('+', ' ');
    description = json['viewCount'];
    tags = json['keywords'].toString().replaceAll('+', ' ');
    thubmnail = json['thumbnail']['thumbnails'][4]['url'].toString();
    rating = json['averageRating'];
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
