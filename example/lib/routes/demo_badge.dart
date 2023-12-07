import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoBadge extends StatefulWidget {
  const DemoBadge({super.key});

  @override
  _DemoBadge createState() => _DemoBadge();
}

class _DemoBadge extends State<DemoBadge> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  Widget testWidget() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(color: Color(0xffdcdee0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          Wrap(spacing: 16.0, children: <Widget>[
            NBadge(
              value: "5",
              child: testWidget(),
            ),
            NBadge(
              value: "10",
              child: testWidget(),
            ),
            NBadge(
              value: "Hot",
              child: testWidget(),
            ),
            NBadge(
              dot: true,
              child: testWidget(),
            ),
          ]),
          title(AppLocalizations.of(context)!.max),
          Wrap(spacing: 16.0, children: <Widget>[
            NBadge(
              value: "20",
              max: 9,
              child: testWidget(),
            ),
            NBadge(
              value: "50",
              max: 20,
              child: testWidget(),
            ),
            NBadge(
              value: "200",
              max: 99,
              child: testWidget(),
            ),
          ]),
          title(AppLocalizations.of(context)!.custom_color),
          Wrap(
            spacing: 16.0,
            children: <Widget>[
              NBadge(
                value: "5",
                color: const Color(0xff1989fa),
                child: testWidget(),
              ),
              NBadge(
                value: "10",
                color: Colors.greenAccent,
                textColor: Colors.green,
                child: testWidget(),
              ),
              NBadge(
                dot: true,
                color: const Color(0xff1989fa),
                child: testWidget(),
              ),
            ],
          ),
          title(AppLocalizations.of(context)!.custom_content),
          Wrap(
            spacing: 16.0,
            children: <Widget>[
              NBadge(
                  content: const Icon(Icons.add, size: 12.0, color: Colors.white),
                  child: testWidget()),
              NBadge(
                  content: const Icon(Icons.close, size: 12.0, color: Colors.white),
                  child: testWidget())
            ],
          )
        ],
      ),
    );
  }
}
