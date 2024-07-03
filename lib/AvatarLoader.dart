import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AvatarLoader extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const AvatarLoader({
    Key? key,
    required this.imageUrl,
    this.radius = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey[200],
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => CircularProgressIndicator(),
          fit: BoxFit.cover,
          width: radius * 2,
          height: radius * 2,
        ),
      ),
    );
  }
}