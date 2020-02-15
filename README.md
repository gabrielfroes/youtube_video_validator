# Youtube Video Validator

A simple dart class for validate Video URL and ID on Youtube. Can be used within Flutter apps.

## Installation

Dart requires the latest version of [Dart](https://www.dartlang.org/). You can download the latest and greatest [here](https://www.dartlang.org/tools/sdk#install).

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
    youtube_video_validator: '^1.0.0'
```

#### 2. Install it

You can install packages from the command line:

```bash
$ pub get
..
```

Alternatively, your editor might support pub. Check the docs for your editor to learn more.

#### 3. Import it

Now in your Dart code, you can use:

```Dart
import 'package:youtube_video_validator/youtube_video_validator.dart';
```

## Usage

Read the unit tests under `test`, or see code example below:

```Dart
void main() {

    var ytVideo = 'https://www.youtube.com/watch?v=ou6Tt5w9B-Y';
    assert(YoutubeVideoValidator.validateUrl(ytVideo));

    // OR  

    var ytVideoID = 'ou6Tt5w9B-Y';
    assert(YoutubeVideoValidator.validateID(ytVideoID));

}
```

## Tips

You can also use this repo as a template for creating Dart packages, just clone the repo and start hacking :)
