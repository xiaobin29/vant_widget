import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoAvatar extends StatefulWidget {

  const DemoAvatar({super.key});

  @override
  State<DemoAvatar> createState() => _DemoAvatar();
}

class _DemoAvatar extends State<DemoAvatar> {

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            title(AppLocalizations.of(context)!.basic_usage),
            Wrap(
              spacing: 12,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Avatar(type: 'large'),
                Avatar(),
                Avatar(type: 'small'),
              ],
            ),
            title(AppLocalizations.of(context)!.shape_type),
            Wrap(
              spacing: 12,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Avatar(type: 'large', shape: "square"),
                Avatar(shape: "square"),
                Avatar(type: 'small', shape: "square"),
              ],
            ),
            title(AppLocalizations.of(context)!.change_color),
            Avatar(color: Colors.blueAccent, iconColor: Colors.white),
            title(AppLocalizations.of(context)!.custom_content),
            Wrap(
              spacing: 12,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Avatar(
                  custom: const Text("U"),
                ),
                Avatar(
                    image: const NetworkImage("https://img.yzcdn.cn/vant/cat.jpeg")),
                Avatar(
                  custom: Image.network(
                    "http://img10.360buyimg.com/uba/jfs/t1/69001/30/2126/550/5d06f947Effd02898/95f18e668670e598.png",
                    width: 20,
                  ),
                ),
              ],
            ),
            title(AppLocalizations.of(context)!.click_event),
            Avatar(
              onClick: () {
                Utils.toast(AppLocalizations.of(context)!.clicked);
              },
            ),
          ],
        ),
      ),
    );
  }
}
