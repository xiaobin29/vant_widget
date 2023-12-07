import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_flutter/main.dart';

class DemoTreeSelect extends StatefulWidget {
  @override
  _DemoTreeSelect createState() => _DemoTreeSelect();
}

class _DemoTreeSelect extends State<DemoTreeSelect> {
  String _info = "NEW";
  int _index = 0;

  Widget title(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 30, 0, 20),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<SideBarItem> list1 = [
      SideBarItem(title: AppLocalizations.of(context)!.zhejiang, children: [
        TreeItem(text: AppLocalizations.of(context)!.hangzhou, id: 1),
        TreeItem(text: AppLocalizations.of(context)!.ningbo, id: 2),
        TreeItem(text: AppLocalizations.of(context)!.wenzhou, id: 3, disabled: true),
        TreeItem(text: AppLocalizations.of(context)!.jiaxing, id: 4),
      ]),
      SideBarItem(title: AppLocalizations.of(context)!.jiangsu, children: [
        TreeItem(text: AppLocalizations.of(context)!.nanjing, id: 5),
        TreeItem(text: AppLocalizations.of(context)!.wuxi, id: 6),
        TreeItem(text: AppLocalizations.of(context)!.xuzhou, id: 7),
        TreeItem(text: AppLocalizations.of(context)!.suzhou, id: 8),
      ]),
      SideBarItem(title: AppLocalizations.of(context)!.fujiang, disabled: true, children: [
        TreeItem(text: AppLocalizations.of(context)!.fuzhou, id: 9),
        TreeItem(text: AppLocalizations.of(context)!.xiamen, id: 10),
      ]),
    ];

    List<SideBarItem> list2 = [
      SideBarItem(
          title: AppLocalizations.of(context)!.group1,
          content: Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://img.yzcdn.cn/vant/cat.jpeg"),
          )),
      SideBarItem(
          title: AppLocalizations.of(context)!.group2,
          content: Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://img.yzcdn.cn/vant/apple-1.jpg"),
          )),
    ];

    List<SideBarItem> list3 = [
      SideBarItem(
        title: AppLocalizations.of(context)!.zhejiang,
        children: [
          TreeItem(text: AppLocalizations.of(context)!.hangzhou, id: 1),
          TreeItem(text: AppLocalizations.of(context)!.ningbo, id: 2),
          TreeItem(text: AppLocalizations.of(context)!.wenzhou, id: 3, disabled: true),
          TreeItem(text: AppLocalizations.of(context)!.jiaxing, id: 4),
        ],
      ),
      SideBarItem(
        title: AppLocalizations.of(context)!.jiangsu,
        info: _info,
        children: [
          TreeItem(text: AppLocalizations.of(context)!.nanjing, id: 5),
          TreeItem(text: AppLocalizations.of(context)!.wuxi, id: 6),
          TreeItem(text: AppLocalizations.of(context)!.xuzhou, id: 7),
          TreeItem(text: AppLocalizations.of(context)!.suzhou, id: 8),
        ],
      ),
    ];
    return SingleChildScrollView(
        padding: EdgeInsets.all(0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              title(AppLocalizations.of(context)!.basic_usage),
              TreeSelect(
                activeId: [1],
                list: list1,
              ),
              title(AppLocalizations.of(context)!.multi_mode),
              TreeSelect(
                activeId: [1],
                list: list1,
                max: 3,
                onChange: (list) {
                  Utils.toast(list.toString());
                },
              ),
              title(AppLocalizations.of(context)!.custom_content),
              TreeSelect(
                list: list2,
                height: 200,
              ),
              title(AppLocalizations.of(context)!.tip),
              TreeSelect(
                mainActiveIndex: _index,
                list: list3,
                activeId: [1],
                height: 220,
              ),
              SizedBox(height: 20)
            ]));
  }
}
