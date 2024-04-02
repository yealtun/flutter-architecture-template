/// Custom mem cache for using network image
final class CustomMemCache {
  /// [height] and [width] is used for caching image.
  const CustomMemCache({required this.height, required this.width});

  /// Height of image.
  final int height;
  /// Width of image.
  final int width;
}
