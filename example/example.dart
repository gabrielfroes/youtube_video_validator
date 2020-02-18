import 'dart:core';
import 'package:youtube_video_validator/youtube_video_validator.dart';

void main() async {
  bool isValid = false;

  const String ytVideo = 'https://www.youtube.com/watch?v=ou6Tt5w9B-Y';
  isValid = YoutubeVideoValidator.validateUrl(ytVideo);
  print('Youtube Video URL is valid? ' + (isValid ? 'yes' : 'no'));

  const String ytVideoID = 'ou6Tt5w9B-Y';
  isValid = await YoutubeVideoValidator.validateID(ytVideoID);
  print('Youtube Video is valid? ' + (isValid ? 'yes' : 'no'));

  if (await YoutubeVideoValidator.validateID(ytVideoID, loadData: true)) {
    print('Title: ${YoutubeVideoValidator.video.title}');
    print('Views: ${YoutubeVideoValidator.video.views}');
    print('Length (seconds): ${YoutubeVideoValidator.video.length}');
    print('Link: ${YoutubeVideoValidator.video.shareUrl()}');
  }
}
