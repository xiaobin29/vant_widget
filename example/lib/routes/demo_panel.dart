import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_flutter/main.dart';

class DemoPanel extends StatefulWidget {
  @override
  _DemoPanel createState() => _DemoPanel();
}

class _DemoPanel extends State<DemoPanel> {
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
            Panel(
                title: AppLocalizations.of(context)!.title,
                desc: AppLocalizations.of(context)!.description,
                status: AppLocalizations.of(context)!.status,
                body: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[Text(AppLocalizations.of(context)!.content)],
                )),
            title(AppLocalizations.of(context)!.advanced_usage),
            Panel(
              title: AppLocalizations.of(context)!.title,
              desc: AppLocalizations.of(context)!.description,
              status: AppLocalizations.of(context)!.status,
              body: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[Text(AppLocalizations.of(context)!.content)],
              ),
              footer: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  NButton(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    type: "danger",
                    size: "small",
                    width: 60,
                    text: AppLocalizations.of(context)!.confirm,
                    onClick: () => {},
                  ),
                  SizedBox(width: 8),
                  NButton(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    size: "small",
                    width: 60,
                    text: AppLocalizations.of(context)!.cancel,
                    onClick: () => {},
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
