import 'package:flutter/material.dart';
import 'package:modal_gif_picker/modal_gif_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giphy Picker Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GiphyGif? _gif;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gif?.title ?? 'Giphy Picker Demo'),
      ),
      body: SafeArea(
        child: Center(
          child: _gif == null
              ? const Text('Pick a gif..')
              : GiphyRenderImage.original(gif: _gif!),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.search),
        onPressed: () async {
          /// request your Giphy API key at https://developers.giphy.com/
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

          if (gif != null) {
            setState(() => _gif = gif);
          }
        },
      ),
    );
  }
}