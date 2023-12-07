import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_flutter/main.dart';

class DemoSidebar extends StatefulWidget {
  @override
  _DemoSidebar createState() => _DemoSidebar();
}

class _DemoSidebar extends State<DemoSidebar> {
  String? _status = "New";
  int _active = 0;

  Widget title(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<SideBarItem> list1 = [
      SideBarItem(title: AppLocalizations.of(context)!.tag),
      SideBarItem(title: AppLocalizations.of(context)!.tag),
      SideBarItem(title: AppLocalizations.of(context)!.tag),
    ];

    List<SideBarItem> list2 = [
      SideBarItem(title: AppLocalizations.of(context)!.tag, dot: true),
      SideBarItem(title: AppLocalizations.of(context)!.tag, info: "5"),
      SideBarItem(
          title: AppLocalizations.of(context)!.tag,
          info: _status,
          onClick: (val) {
            setState(() {
              _status = null;
              _active = val;
            });
          }),
    ];

    List<SideBarItem> list3 = [
      SideBarItem(title: AppLocalizations.of(context)!.tag),
      SideBarItem(title: AppLocalizations.of(context)!.tag, disabled: true),
      SideBarItem(title: AppLocalizations.of(context)!.tag),
    ];
    return SingleChildScrollView(
      child: Wrap(
        spacing: 100,
        runSpacing: 30,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                title(AppLocalizations.of(context)!.basic_usage),
                Sidebar(
                  list: list1,
                )
              ]),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                title(AppLocalizations.of(context)!.tip),
                Sidebar(
                  active: _active,
                  list: list2,
                )
              ]),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                title(AppLocalizations.of(context)!.disabled_options),
                Sidebar(
                  list: list3,
                )
              ]),
        ],
      ),
    );
  }
}
