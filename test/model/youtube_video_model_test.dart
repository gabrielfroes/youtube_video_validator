import 'package:test/test.dart';
import 'package:youtube_video_validator/model/youtube_video_model.dart';

void main() {
  const String validYoutubeVideoID = 'rtuywS2fG2Y';
  const String channelID = 'UCFuIUoyHB12qpYa8Jpxoxow';

  test('Validate YoutubeVideo Share Url', () {
    final YoutubeVideo actualVideo = YoutubeVideo();
    actualVideo.id = validYoutubeVideoID;
    expect(
        actualVideo.shareUrl(), equals('https://youtu.be/$validYoutubeVideoID'),
        reason: 'YoutubeVideo: ${actualVideo.toString()}');
  });

  test('Validate YoutubeVideo null Channel Url', () {
    final YoutubeVideo actualVideo = YoutubeVideo();
    actualVideo.channelID = null;
    expect(actualVideo.channelUrl(), isNull,
        reason: 'YoutubeVideo: ${actualVideo.toString()}');
  });

  test('Validate YoutubeVideo Channel Url', () {
    final YoutubeVideo actualVideo = YoutubeVideo();
    actualVideo.id = validYoutubeVideoID;
    actualVideo.channelID = channelID;
    expect(actualVideo.channelUrl(), isNotNull,
        reason: 'Youtube Video Channel: ${actualVideo.channelID}');
  });

  test('Validate YoutubeVideo Clear', () {
    final YoutubeVideo actualVideo = YoutubeVideo();
    actualVideo.id = validYoutubeVideoID;
    actualVideo.channelID = channelID;
    actualVideo.clear();
    expect(actualVideo.channelID, isNull,
        reason: 'Youtube Video Clear: ${actualVideo.channelID}');
  });
}
