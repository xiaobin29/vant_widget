import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoCircle extends StatefulWidget {
  const DemoCircle({super.key});

  @override
  _DemoCircle createState() => _DemoCircle();
}

class _DemoCircle extends State<DemoCircle> {
  double percentage = 70;

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
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
          const Progress(
              percentage: 30,
              type: "circular",
              showPivot: true,
              circularSize: 120),
          title(AppLocalizations.of(context)!.custom_style),
          Row(
            children: <Widget>[
              NButton(
                text: AppLocalizations.of(context)!.increase,
                type: "primary",
                onClick: () {
                  setState(() {
                    percentage += 10;
                  });
                },
              ),
              const SizedBox(width: 6),
              NButton(
                text: AppLocalizations.of(context)!.reduce,
                type: "danger",
                onClick: () {
                  setState(() {
                    percentage -= 10;
                  });
                },
              )
            ],
          ),
          Progress(
              percentage: percentage,
              type: "circular",
              showPivot: true,
              strokeWidth: 10,
              pivotText: AppLocalizations.of(context)!.custom_width),
          Progress(
              percentage: percentage,
              type: "circular",
              showPivot: true,
              color: Colors.redAccent,
              pivotText: AppLocalizations.of(context)!.custom_color),
          Progress(
              percentage: percentage,
              type: "circular",
              showPivot: true,
              circularSize: 150,
              color: Colors.purple,
              pivotText: AppLocalizations.of(context)!.custom_size),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
