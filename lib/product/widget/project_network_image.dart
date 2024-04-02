import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class ProjectNetworkImage extends StatelessWidget {
  const ProjectNetworkImage({super.key, required this.url});

  final String? url;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
        imageUrl: url,
        loadingWidget: Assets.lottie.animSpace.lottie(
          package: 'gen',
          width: 200,
          height: 100,
        ));
  }
}
