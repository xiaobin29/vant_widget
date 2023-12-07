import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoImageWall extends StatefulWidget {
  const DemoImageWall({super.key});

  @override
  _DemoImageWall createState() => _DemoImageWall();
}

class _DemoImageWall extends State<DemoImageWall> {
  List<String> images = [
    "https://img.yzcdn.cn/vant/leaf.jpg",
    "https://img.yzcdn.cn/vant/tree.jpg",
    "https://img.yzcdn.cn/vant/sand.jpg",
  ];

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title(AppLocalizations.of(context)!.basic_usage),
        ImageWall(
          images: images,
          count: 6,
          onUpload: (files) async {
            return Utils.toast(files.toString());
          },
          onChange: (image) {},
        ),
        title(AppLocalizations.of(context)!.multiple_image),
        ImageWall(
          images: images,
          count: 6,
          multiple: true,
          onUpload: (files) async {
            return Utils.toast(files.toString());
          },
          onChange: (image) {},
        ),
        title(AppLocalizations.of(context)!.image_zoom_mode),
        ImageWall(
          images: images,
          imageFit: BoxFit.contain,
          onUpload: (files) async {
            return Utils.toast(files.toString());
          },
          onChange: (image) {},
        )
      ],
    ));
  }
}
