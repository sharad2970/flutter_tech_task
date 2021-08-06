import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/utils/asset_utils.dart';
import 'package:flutter_base/utils/color_utils.dart';

import 'goal_one_svg.dart';

class CatchNetworkImage extends StatelessWidget {
  final String iconUrl;
  final double width;
  final double height;
  final bool isImageDisabled;
  final bool isImageCircular;

  CatchNetworkImage({
    @required this.iconUrl,
    this.width: 45.0,
    this.height: 45.0,
    this.isImageDisabled: false,
    this.isImageCircular: false,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isImageDisabled ? 0.5 : 1,
      child: CachedNetworkImage(
        placeholder: (context, url) => Container(
          width: 35,
          height: 35,
          child: Center(
            child: CircularProgressIndicator(
              strokeWidth: 1,
              backgroundColor: GoalOneColor.grass,
              valueColor: new AlwaysStoppedAnimation<Color>(
                GoalOneColor.white,
              ),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          width: width,
          height: height,
          child: GoalOneSvg.asset(AssetUtils.profile,
              width: 96.0,
              height: 96.0,
              color: isImageDisabled ? GoalOneColor.coolGrey : GoalOneColor.black),
        ),
        imageBuilder: isImageCircular
            ? (context, imageProvider) => CircleAvatar(
                  radius: 15,
                  backgroundImage: imageProvider,
                )
            : null,
        imageUrl: iconUrl,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
