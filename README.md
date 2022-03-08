# Video Player Example

## Purpose

Illustrates how to play both a local video file included in the app bundle and a remotely hosted video file.

## Caveats

Note that the remotely hosted files must be served from a web server that is configured to allow for streaming of video and audio files.  

For example, this file will not work with the [VideoPlayer][1] view provided by [AVKit](https://developer.apple.com/documentation/avkit):

`https://russellgordon.ca/teaching/snow-clearing-and-computer-studies-enrolment/plotter-output.mp4`

That is because the video file is [hosted at Netlify on a site that uses large media storage](https://docs.netlify.com/large-media/requirements-and-limitations/#limitations).

- callout(Quote): "Netlify Large Media is not suitable for streaming audio or video files. However, storing these assets for download should work well."

The following remote file, however, is hosted on a server that supports streaming and will work quite well with [VideoPlayer][1]:

`https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.mp4`

## Recommended Reading

This [tutorial on Ray Wenderlich's site provides more background on using VideoPlayer](https://www.raywenderlich.com/22372639-video-streaming-tutorial-for-ios-getting-started).

[1]: https://developer.apple.com/documentation/avkit/videoplayer
