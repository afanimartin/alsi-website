import 'package:flutter/rendering.dart';

class Content {
  const Content(
      {required this.name,
      required this.imageUrl,
      this.titleImageUrl = '',
      this.color = const Color(0xFFffffff),
      this.videoUrl = '',
      this.description = ''});

  final String name;
  final String imageUrl;
  final String titleImageUrl;
  final Color color;
  final String videoUrl;
  final String description;
}
