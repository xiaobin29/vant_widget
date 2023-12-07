import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_flutter/main.dart';

class DemoImagePreview extends StatefulWidget {
  @override
  _DemoImagePreview createState() => _DemoImagePreview();
}

class _DemoImagePreview extends State<DemoImagePreview> {
  List<Widget> images = [
    Image.network("https://img.yzcdn.cn/vant/apple-1.jpg"),
    Image.network("https://img.yzcdn.cn/vant/apple-2.jpg"),
    Image.network("https://img.yzcdn.cn/vant/apple-3.jpg"),
    Image.network("https://img.yzcdn.cn/vant/apple-4.jpg")
  ];

  Widget title(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          Cell(
            title: AppLocalizations.of(context)!.preview_image,
            isLink: true,
            onClick: () {
              showImagePreview(
                context: context,
                images: images,
              );
            },
          ),
          title(AppLocalizations.of(context)!.incoming_configuration),
          CellGroup(
            border: false,
            children: [
              Cell(
                title: AppLocalizations.of(context)!.initial_position,
                isLink: true,
                onClick: () {
                  showImagePreview(
                      context: context,
                      images: images,
                      showIndicators: true,
                      startPosition: 2,
                      swipeDuration: Duration(seconds: 2),
                      onChange: (val) {
                        Utils.toast("Page Changed $val");
                      });
                },
              ),
              Cell(
                title: AppLocalizations.of(context)!.show_close_button,
                isLink: true,
                onClick: () {
                  showImagePreview(
                      context: context, images: images, closeable: true);
                },
              ),
              Cell(
                title: AppLocalizations.of(context)!.listen_close_events,
                isLink: true,
                onClick: () {
                  showImagePreview(
                      context: context,
                      images: images,
                      closeable: true,
                      onClose: (int index) {
                        Utils.toast(AppLocalizations.of(context)!
                            .close_in_image); // index.toString()
                      });
                },
              )
            ],
          )
        ]));
  }
}
