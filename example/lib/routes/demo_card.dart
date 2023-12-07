import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_flutter/main.dart';

class DemoCard extends StatefulWidget {
  @override
  _DemoCard createState() => _DemoCard();
}

class _DemoCard extends State<DemoCard> {
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
          NCard(
              title: AppLocalizations.of(context)!.product_name,
              desc: AppLocalizations.of(context)!.description,
              num: 2,
              price: 2.00,
              image: Image.network("https://img.yzcdn.cn/vant/t-thirt.jpg")),
          title(AppLocalizations.of(context)!.marketing_information),
          NCard(
            title: AppLocalizations.of(context)!.product_name,
            desc: AppLocalizations.of(context)!.description,
            num: 2,
            price: 2.00,
            tag: AppLocalizations.of(context)!.tag,
            originPrice: 10.00,
            image: Image.network("https://img.yzcdn.cn/vant/t-thirt.jpg"),
            onClick: () {
              Utils.toast(AppLocalizations.of(context)!.clicked);
            },
          ),
          title(AppLocalizations.of(context)!.custom_content),
          NCard(
            customTitle: Text(AppLocalizations.of(context)!.product_name,
                style: TextStyle(fontSize: 16, color: Colors.blueAccent)),
            desc: AppLocalizations.of(context)!.description,
            num: 2,
            customPrice: Price(
              value: 2.0,
              color: Colors.red,
            ),
            image: Image.network("https://img.yzcdn.cn/vant/t-thirt.jpg"),
            customTags: Row(
              children: <Widget>[
                Tag(text: AppLocalizations.of(context)!.tag, plain: true),
                Tag(text: AppLocalizations.of(context)!.tag, plain: true)
              ],
            ),
            customFooter: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  NButton(
                    text: AppLocalizations.of(context)!.button,
                    round: true,
                    size: "mini",
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                  ),
                  SizedBox(width: 6),
                  NButton(
                    text: AppLocalizations.of(context)!.button,
                    round: true,
                    size: "mini",
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
