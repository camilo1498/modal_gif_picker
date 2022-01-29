## Description
this package is a renew version of [Giphy_Picker](https://pub.dev/packages/giphy_picker).

The idea of this package is to create different UI solutions so that each developer can adapt it to their project or customize it to their liking.

## Getting started

First you need to create your own (Giphy API Key)[https://developers.giphy.com/]

1) Pick a gif from `modal_bottom_bottom_sheet` as `async` function
```dart
final gif = await ModalGifPicker.pickModalSheetGif(
            apiKey: '[HERE YOUR API KEY]',
            context: context,
            rating: GiphyRating.g,
            sticker: true,
            backDropColor: Colors.black,
            crossAxisCount: 3,
            childAspectRatio: 1.2,
            topDragColor: Colors.white.withOpacity(0.2),
            previewType: GiphyPreviewType.previewWebp,
          );

```

2) use `GiphyRenderImage.original` to render the picked gif and `gif` parameter
```dart
SafeArea(
        child: Center(
          child: GiphyRenderImage.original(gif: _gif!),
        ),
      ),
```

## Demo
![Demo Gif video](https://github.com/camilo1498/modal_gif_picker/blob/main/screenshots/giphydemo.gif)
