![GitHub License](https://img.shields.io/github/license/AminBhst/brisk-engine?style=flat)
[![Pub](https://img.shields.io/pub/v/brisk_engine.svg?style=popout&include_prereleases)](https://pub.dev/packages/brisk_engine)

<p align="center">
<p align="center">Ultra-fast, highly efficient download engine written in pure dart </pal>

## :gear: About Brisk Engine

Brisk-Engine is the download engine that powers [Brisk Download Manager](https://github.com/AminBhst/brisk), now
available as a separate library.
It is written in pure dart and can be used in all devices without platform-specific dependencies.

## :rocket: Features

- **Dynamic Connection Spawn:** Downloads begin with a single connection, with more connections dynamically added on the
  fly.
- **Dynamic Connection Reuse:** Completed connections are reassigned to assist other active connections, maintaining the
  maximum number of concurrent connections to maintaining the highest possible download speed.
- **Automatic connection reset:** Hanging connections will be reset automatically.

## Example Usage

```dart

/// Build the download item either by using this method or manually building it
/// using HttpDownloadEngine.requestFileInfo(url). Note that buildDownloadItem(url)
/// automatically uses an isolate to request for file information while requestFileInfo
/// does so in the same isolate.
final downloadItem = await HttpDownloadEngine.buildDownloadItem(url);

/// Start the engine
DownloadEngine.start(
  downloadItem,
  settings,
  onButtonAvailability: (message) {
  /// Handle button availability. A download should only be paused or resumed
  /// when the buttons are available as notified in this method. Otherwise, it could
  /// lead to a corrupted file.
  },
  onDownloadProgress: (message) {
  /// Updates on the download progress will be notified here
  },
);

/// You can use the UID which is set on the downloadItem to pause/resume the download

/// Pause the download
DownloadEngine.pause(downloadItem.uid);

/// Resume the download
DownloadEngine.resume(downloadItem.uid);

```
