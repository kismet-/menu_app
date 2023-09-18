import 'dart:async';

import 'package:flutter/material.dart';

class FadingImages extends StatefulWidget {
  final List<String> imageUrls;
  final Duration duration;

  FadingImages({required this.imageUrls, required this.duration});

  @override
  _FadingImagesState createState() => _FadingImagesState();
}

class _FadingImagesState extends State<FadingImages> {
  late int _currentIndex;
  late int _nextIndex;
  late bool _showFirstImage;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _nextIndex = (_currentIndex + 1) % widget.imageUrls.length;
    _showFirstImage = true;

    _timer = Timer.periodic(widget.duration, _updateImage);
  }

  void _updateImage(Timer timer) {
    setState(() {
      _showFirstImage = !_showFirstImage;
      _currentIndex = _nextIndex;
      _nextIndex = (_currentIndex + 1) % widget.imageUrls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildImage(widget.imageUrls[_currentIndex]),
        AnimatedCrossFade(
          duration: widget.duration,
          crossFadeState: _showFirstImage
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: _buildImage(widget.imageUrls[_currentIndex]),
          secondChild: _buildImage(widget.imageUrls[_nextIndex]),
        )
      ],
    );
  }

  Widget _buildImage(String url) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
