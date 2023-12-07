import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_flutter/main.dart';

class DemoCell extends StatefulWidget {
  const DemoCell({super.key});

  @override
  State<DemoCell> createState() => _DemoCell();
}

class _DemoCell extends State<DemoCell> {
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
          CellGroup(children: <Widget>[
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content),
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content,
                label: AppLocalizations.of(context)!.description,
                require: true),
          ]),
          title(AppLocalizations.of(context)!.cell_size),
          CellGroup(children: <Widget>[
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content,
                size: "large"),
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content,
                size: "large",
                label: AppLocalizations.of(context)!.description),
          ]),
          title(AppLocalizations.of(context)!.show_icon),
          CellGroup(children: <Widget>[
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content,
                icon: Icons.my_location),
          ]),
          title(AppLocalizations.of(context)!.only_value),
          CellGroup(children: <Widget>[
            Cell(value: AppLocalizations.of(context)!.content),
          ]),
          title(AppLocalizations.of(context)!.clickable),
          CellGroup(children: <Widget>[
            Cell(
              title: AppLocalizations.of(context)!.cell_title,
              isLink: true,
              onClick: () {
                Utils.toast(AppLocalizations.of(context)!.clicked);
              },
            ),
            Cell(
              title: AppLocalizations.of(context)!.cell_title,
              value: AppLocalizations.of(context)!.content,
              isLink: true,
              onClick: () {
                Utils.toast(AppLocalizations.of(context)!.clicked);
              },
            ),
            Cell(
              title: AppLocalizations.of(context)!.cell_title,
              value: AppLocalizations.of(context)!.content,
              label: AppLocalizations.of(context)!.description,
              arrowDirection: "down",
              isLink: true,
              onClick: () {
                Utils.toast(AppLocalizations.of(context)!.clicked);
              },
            ),
          ]),
          title(AppLocalizations.of(context)!.group_title),
          CellGroup(title: AppLocalizations.of(context)!.group1, children: <Widget>[
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content),
          ]),
          CellGroup(title: AppLocalizations.of(context)!.group2, children: <Widget>[
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content),
          ]),
          title(AppLocalizations.of(context)!.custom_slot),
          CellGroup(children: <Widget>[
            Cell(
              customTitle: Row(
                children: <Widget>[
                  Text(AppLocalizations.of(context)!.custom_title),
                  SizedBox(width: 4),
                  Tag(
                    text: AppLocalizations.of(context)!.tag,
                    color: Colors.blueAccent,
                  )
                ],
              ),
              value: AppLocalizations.of(context)!.content,
              isLink: true,
            ),
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                icon: Icons.store,
                customRight:
                    Icon(Icons.search, color: Colors.blueAccent, size: 16))
          ]),
          title(AppLocalizations.of(context)!.row_center),
          CellGroup(children: <Widget>[
            Cell(
                title: AppLocalizations.of(context)!.cell_title,
                value: AppLocalizations.of(context)!.content,
                label: AppLocalizations.of(context)!.description,
                center: true),
          ])
        ],
      ),
    );
  }
}
