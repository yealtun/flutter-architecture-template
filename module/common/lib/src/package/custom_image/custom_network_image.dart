import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// It will provide to image caching, image loading from network.
class CustomNetworkImage extends StatelessWidget {
  /// Constructor for CustomNetworkImage.
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// Image source url.
  final String? imageUrl;

  /// If image url is empty then it will show emptyWidget.
  final Widget? emptyWidget;

  /// If image is loading then it will show loadingWidget.
  final Widget? loadingWidget;

  /// Default value is [CustomMemCache(height: 200, width: 200)].
  final CustomMemCache memCache;

  /// Default value is [BoxFit.cover].
  final BoxFit boxFit;

  /// Image size.
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) return const SizedBox();

    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      width: size?.width,
      height: size?.height,
      errorListener: (value) {
        if(kDebugMode) debugPrint('Error in loading image: $value');
      },
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidget ??
            Center(
              child: CircularProgressIndicator(
                value: progress.progress,
              ),
            );
      },
      
    );
  }
}
