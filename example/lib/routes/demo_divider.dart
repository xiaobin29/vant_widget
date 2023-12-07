import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoDivider extends StatefulWidget {
  const DemoDivider({super.key});

  @override
  _DemoDivider createState() => _DemoDivider();
}

class _DemoDivider extends State<DemoDivider> {
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
          const NDivider(),
          title(AppLocalizations.of(context)!.display_text),
          NDivider(
            content: AppLocalizations.of(context)!.divider,
          ),
          title(AppLocalizations.of(context)!.content_position),
          NDivider(
            content: AppLocalizations.of(context)!.divider,
            contentPosition: 'left',
          ),
          const SizedBox(height: 10),
          NDivider(
            content: AppLocalizations.of(context)!.divider,
            contentPosition: 'right',
          ),
          title(AppLocalizations.of(context)!.hairline_divider),
          NDivider(
            content: AppLocalizations.of(context)!.divider,
            hairline: true,
          ),
          title(AppLocalizations.of(context)!.custom_color),
          NDivider(
              lineColor: Colors.redAccent,
              fontColor: Colors.redAccent,
              content: AppLocalizations.of(context)!.no_more),
          const SizedBox(height: 10),
          NDivider(
              lineColor: Colors.orangeAccent,
              fontColor: Colors.orangeAccent,
              content: AppLocalizations.of(context)!.no_more),
          const SizedBox(height: 10),
          NDivider(
              lineColor: Colors.blueAccent,
              fontColor: Colors.blueAccent,
              content: AppLocalizations.of(context)!.no_more),
          title(AppLocalizations.of(context)!.custom_content),
          const NDivider(child: Icon(Icons.cancel, color: Colors.blueAccent)),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
