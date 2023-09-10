import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomBookImage extends StatelessWidget {
  const CustomBookImage(this.imgUrl, {super.key});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 3/ 4,
          child: CachedNetworkImage(
            imageUrl: imgUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
            ),
          )),
    );
  }
}
