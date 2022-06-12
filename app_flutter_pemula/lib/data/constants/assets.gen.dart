/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesAndroidGen get android => const $AssetsImagesAndroidGen();
  $AssetsImagesBackEndGen get backEnd => const $AssetsImagesBackEndGen();

  /// File path: assets/images/d_aureality.png
  AssetGenImage get dAureality =>
      const AssetGenImage('assets/images/d_aureality.png');

  /// File path: assets/images/d_bangkit.png
  AssetGenImage get dBangkit =>
      const AssetGenImage('assets/images/d_bangkit.png');

  /// File path: assets/images/d_byIsat.png
  AssetGenImage get dByIsat =>
      const AssetGenImage('assets/images/d_byIsat.png');

  /// File path: assets/images/d_home.png
  AssetGenImage get dHome => const AssetGenImage('assets/images/d_home.png');

  /// File path: assets/images/d_kampusmerdeka.png
  AssetGenImage get dKampusmerdeka =>
      const AssetGenImage('assets/images/d_kampusmerdeka.png');

  /// File path: assets/images/d_prakerja.png
  AssetGenImage get dPrakerja =>
      const AssetGenImage('assets/images/d_prakerja.png');

  /// File path: assets/images/dicodinglogo.png
  AssetGenImage get dicodinglogo =>
      const AssetGenImage('assets/images/dicodinglogo.png');

  $AssetsImagesFrontEndWebGen get frontEndWeb =>
      const $AssetsImagesFrontEndWebGen();
  $AssetsImagesIosGen get ios => const $AssetsImagesIosGen();
  $AssetsImagesMultiflatformGen get multiflatform =>
      const $AssetsImagesMultiflatformGen();
  $AssetsImagesReactGen get react => const $AssetsImagesReactGen();
  $AssetsImagesTrustedbyGen get trustedby => const $AssetsImagesTrustedbyGen();
}

class $AssetsImagesAndroidGen {
  const $AssetsImagesAndroidGen();

  /// File path: assets/images/android/d_android.jpg
  AssetGenImage get dAndroid =>
      const AssetGenImage('assets/images/android/d_android.jpg');
}

class $AssetsImagesBackEndGen {
  const $AssetsImagesBackEndGen();

  /// File path: assets/images/back_end/d_backend.jpg
  AssetGenImage get dBackend =>
      const AssetGenImage('assets/images/back_end/d_backend.jpg');
}

class $AssetsImagesFrontEndWebGen {
  const $AssetsImagesFrontEndWebGen();

  /// File path: assets/images/front_end_web/d_frontend.jpg
  AssetGenImage get dFrontend =>
      const AssetGenImage('assets/images/front_end_web/d_frontend.jpg');
}

class $AssetsImagesIosGen {
  const $AssetsImagesIosGen();

  /// File path: assets/images/ios/d_ios.jpg
  AssetGenImage get dIos => const AssetGenImage('assets/images/ios/d_ios.jpg');
}

class $AssetsImagesMultiflatformGen {
  const $AssetsImagesMultiflatformGen();

  /// File path: assets/images/multiflatform/d_multiplatform.jpeg
  AssetGenImage get dMultiplatform =>
      const AssetGenImage('assets/images/multiflatform/d_multiplatform.jpeg');

  /// File path: assets/images/multiflatform/d_multiplatofrma.jpg
  AssetGenImage get dMultiplatofrma =>
      const AssetGenImage('assets/images/multiflatform/d_multiplatofrma.jpg');
}

class $AssetsImagesReactGen {
  const $AssetsImagesReactGen();

  /// File path: assets/images/react/d_reactjs.webp
  AssetGenImage get dReactjs =>
      const AssetGenImage('assets/images/react/d_reactjs.webp');
}

class $AssetsImagesTrustedbyGen {
  const $AssetsImagesTrustedbyGen();

  /// File path: assets/images/trustedby/d_aws.png
  AssetGenImage get dAws =>
      const AssetGenImage('assets/images/trustedby/d_aws.png');

  /// File path: assets/images/trustedby/d_google.png
  AssetGenImage get dGoogle =>
      const AssetGenImage('assets/images/trustedby/d_google.png');

  /// File path: assets/images/trustedby/d_ibm.png
  AssetGenImage get dIbm =>
      const AssetGenImage('assets/images/trustedby/d_ibm.png');

  /// File path: assets/images/trustedby/d_isat.png
  AssetGenImage get dIsat =>
      const AssetGenImage('assets/images/trustedby/d_isat.png');

  /// File path: assets/images/trustedby/d_microsoft.png
  AssetGenImage get dMicrosoft =>
      const AssetGenImage('assets/images/trustedby/d_microsoft.png');

  /// File path: assets/images/trustedby/d_samsung.png
  AssetGenImage get dSamsung =>
      const AssetGenImage('assets/images/trustedby/d_samsung.png');
}

class Assets {
  Assets._();

  static const AssetGenImage icon = AssetGenImage('assets/icon.png');
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
