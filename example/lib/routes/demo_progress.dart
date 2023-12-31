import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoProgress extends StatefulWidget {
  const DemoProgress({super.key});

  @override
  _DemoProgress createState() => _DemoProgress();
}

class _DemoProgress extends State<DemoProgress> {
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
          const Progress(percentage: 50, showPivot: true),
          title(AppLocalizations.of(context)!.line_thickness),
          const Progress(percentage: 50, strokeWidth: 8, showPivot: true),
          title(AppLocalizations.of(context)!.ash),
          const Progress(percentage: 50, inactive: true, showPivot: true),
          title(AppLocalizations.of(context)!.custom_style),
          Column(
            children: <Widget>[
              Progress(
                  percentage: 30,
                  color: Colors.orangeAccent,
                  pivotColor: Colors.orangeAccent,
                  pivotText: AppLocalizations.of(context)!.orange,
                  showPivot: true),
              Progress(
                  percentage: 50,
                  color: Colors.redAccent,
                  pivotColor: Colors.redAccent,
                  pivotText: AppLocalizations.of(context)!.red,
                  showPivot: true),
              Progress(
                  percentage: 70,
                  color: Colors.purple,
                  pivotColor: Colors.purple,
                  pivotText: AppLocalizations.of(context)!.purple,
                  showPivot: true)
            ],
          ),
        ],
      ),
    );
  }
}
