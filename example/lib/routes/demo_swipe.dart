import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoSwipe extends StatefulWidget {
  const DemoSwipe({super.key});

  @override
  _DemoSwipe createState() => _DemoSwipe();
}

class _DemoSwipe extends State<DemoSwipe> {
  String current = "1";

  @override
  void initState() {
    super.initState();
  }

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 40, 0, 10),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  buildItem(num count) {
    List<Widget> widgets = [];
    for (int i = 1; i <= count; i++) {
      widgets.add(Container(
          color:
              i % 2 == 0 ? Colors.lightBlue : Colors.lightBlue.withOpacity(.8),
          child: Center(
              child: Text(i.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.white)))));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      title(AppLocalizations.of(context)!.basic_usage),
      SizedBox(
          height: 220.0,
          child: Swipe(
            autoPlay: true,
            children: <Widget>[
              Image.network("https://img.yzcdn.cn/vant/apple-1.jpg"),
              Image.network("https://img.yzcdn.cn/vant/apple-2.jpg"),
              Image.network("https://img.yzcdn.cn/vant/apple-3.jpg"),
              Image.network("https://img.yzcdn.cn/vant/apple-4.jpg")
            ],
          )),
      title(AppLocalizations.of(context)!.listen_to_change_event),
      SizedBox(
          height: 220.0,
          child: Swipe(
            autoPlay: true,
            indicatorColor: Colors.white,
            children: buildItem(4),
            // onChange: (val) {
            //   Utils.toast(val);
            // },
          )),
      title(AppLocalizations.of(context)!.vertical_scroll),
      SizedBox(
          height: 220.0,
          child: Swipe(
            autoPlay: true,
            scrollDirection: 'vertical',
            indicatorColor: Colors.white,
            children: buildItem(4),
          )),
      title(AppLocalizations.of(context)!.custom_animation),
      SizedBox(
          height: 220.0,
          child: Swipe(
            autoPlay: true,
            indicatorColor: Colors.redAccent,
            indicatorSize: 12.0,
            interval: const Duration(seconds: 5),
            duration: const Duration(seconds: 3),
            children: buildItem(4),
          )),
      title(AppLocalizations.of(context)!.set_slider_proportion),
      SizedBox(
          height: 220.0,
          child: Swipe(
            autoPlay: true,
            viewportFraction: .5,
            children: <Widget>[
              Image.network("https://img.yzcdn.cn/vant/apple-1.jpg"),
              Image.network("https://img.yzcdn.cn/vant/apple-2.jpg"),
              Image.network("https://img.yzcdn.cn/vant/apple-3.jpg"),
              Image.network("https://img.yzcdn.cn/vant/apple-4.jpg")
            ],
          )),
      title(AppLocalizations.of(context)!.custom_indicator),
      SizedBox(
          height: 220.0,
          child: Swipe(
            autoPlay: true,
            children: buildItem(4),
            showIndicators: true,
            onChange: (val) {
              setState(() {
                current = val.toString();
              });
            },
            indicator: Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                // width: 20,
                // height: 20,
                padding: const EdgeInsets.all(5),
                color: Colors.black.withOpacity(.2),
                child: Text("$current/4",
                    style: const TextStyle(fontSize: 12, color: Colors.white)),
              ),
            ),
          )),
    ]);
  }
}
