import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoTag extends StatefulWidget {
  const DemoTag({super.key});

  @override
  _DemoTag createState() => _DemoTag();
}

class _DemoTag extends State<DemoTag> {
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
        CellGroup(border: false, children: <Widget>[
          Cell(
              title: AppLocalizations.of(context)!.default_type,
              customRight: Tag(text: AppLocalizations.of(context)!.tag)),
          Cell(
              title: AppLocalizations.of(context)!.primary,
              customRight: Tag(type: "primary", text: AppLocalizations.of(context)!.tag)),
          Cell(
              title: AppLocalizations.of(context)!.success,
              customRight: Tag(type: "success", text: AppLocalizations.of(context)!.tag)),
          Cell(
              title: AppLocalizations.of(context)!.danger,
              customRight: Tag(type: "danger", text: AppLocalizations.of(context)!.tag)),
          Cell(
              title: AppLocalizations.of(context)!.warning,
              customRight: Tag(type: "warning", text: AppLocalizations.of(context)!.tag)),
        ]),
        title(AppLocalizations.of(context)!.style),
        CellGroup(border: false, children: <Widget>[
          Cell(
              title: AppLocalizations.of(context)!.plain_style,
              customRight: Tag(
                  type: "primary", text: AppLocalizations.of(context)!.tag, plain: true)),
          Cell(
              title: AppLocalizations.of(context)!.round_style,
              customRight: Tag(
                  type: "primary", text: AppLocalizations.of(context)!.tag, round: true)),
          Cell(
              title: AppLocalizations.of(context)!.mark_style,
              customRight: Tag(
                  type: "primary", text: AppLocalizations.of(context)!.tag, mark: true)),
          Cell(
              title: AppLocalizations.of(context)!.closeable_tag,
              customRight: Tag(
                type: "primary",
                text: AppLocalizations.of(context)!.tag,
                onClose: () async {
                  Utils.toast("close");
                },
              )),
        ]),
        title(AppLocalizations.of(context)!.tag_size),
        CellGroup(border: false, children: <Widget>[
          Cell(
              title: AppLocalizations.of(context)!.small_tag,
              customRight: Tag(type: "primary", text: AppLocalizations.of(context)!.tag)),
          Cell(
              title: AppLocalizations.of(context)!.medium_tag,
              customRight: Tag(
                  type: "primary",
                  text: AppLocalizations.of(context)!.tag,
                  size: "medium")),
          Cell(
              title: AppLocalizations.of(context)!.large_tag,
              customRight: Tag(
                  type: "primary", text: AppLocalizations.of(context)!.tag, size: "large"))
        ]),
        title(AppLocalizations.of(context)!.custom_color),
        CellGroup(border: false, children: <Widget>[
          Cell(
              title: AppLocalizations.of(context)!.background_color,
              customRight: Tag(
                  type: "primary",
                  text: AppLocalizations.of(context)!.tag,
                  color: Colors.purple)),
          Cell(
              title: AppLocalizations.of(context)!.font_color,
              customRight: Tag(
                  type: "primary",
                  text: AppLocalizations.of(context)!.tag,
                  color: Colors.red[100],
                  textColor: Colors.red[600])),
          Cell(
              title: AppLocalizations.of(context)!.plain_color,
              customRight: Tag(
                  type: "primary",
                  text: AppLocalizations.of(context)!.tag,
                  plain: true,
                  color: Colors.purple))
        ]),
      ],
    ));
  }
}
