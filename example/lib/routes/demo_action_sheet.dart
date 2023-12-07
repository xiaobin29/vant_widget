import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vant_flutter/main.dart';

import '../utils/index.dart';

class DemoActionSheet extends StatefulWidget {
  @override
  _DemoActionSheet createState() => _DemoActionSheet();
}

class _DemoActionSheet extends State<DemoActionSheet> {
  Widget title(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<ActionSheetItem> actionList = [
      ActionSheetItem(name: AppLocalizations.of(context)!.option),
      ActionSheetItem(name: AppLocalizations.of(context)!.option),
      ActionSheetItem(
          name: AppLocalizations.of(context)!.option,
          subname: AppLocalizations.of(context)!.basic_info),
    ];

    List<ActionSheetItem> actionList2 = [
      ActionSheetItem(name: AppLocalizations.of(context)!.option, color: Colors.green),
      ActionSheetItem(loading: true),
      ActionSheetItem(name: AppLocalizations.of(context)!.option, disabled: true),
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          CellGroup(
            border: false,
            children: [
              Cell(
                title: AppLocalizations.of(context)!.basic_usage,
                isLink: true,
                onClick: () {
                  ActionSheet(
                      actions: actionList,
                      onSelect: (action, index, context) {
                        Utils.toast(action.name!);
                      }).show(context);
                },
              ),
              Cell(
                title: AppLocalizations.of(context)!.show_cancel_button,
                isLink: true,
                onClick: () {
                  ActionSheet(
                    actions: actionList,
                    cancelText: AppLocalizations.of(context)!.cancel,
                    onCancel: () {
                      Utils.toast(AppLocalizations.of(context)!.cancel);
                    },
                  ).show(context);
                },
              ),
              Cell(
                title: AppLocalizations.of(context)!.show_description,
                isLink: true,
                onClick: () {
                  ActionSheet(
                    actions: actionList,
                    title: AppLocalizations.of(context)!.title,
                    description: AppLocalizations.of(context)!.description,
                  ).show(context);
                },
              ),
            ],
          ),
          title(AppLocalizations.of(context)!.option_status),
          Cell(
            title: AppLocalizations.of(context)!.option_status,
            isLink: true,
            onClick: () {
              ActionSheet(actions: actionList2).show(context);
            },
          ),
          title(AppLocalizations.of(context)!.custom_panel),
          Cell(
            title: AppLocalizations.of(context)!.custom_panel,
            isLink: true,
            onClick: () {
              ActionSheet(
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(10),
                  alignment: AlignmentDirectional.topStart,
                  child: Text("data"),
                ),
                title: AppLocalizations.of(context)!.title,
                closeIcon: Icons.highlight_off,
              ).show(context);
            },
          ),
        ],
      ),
    );
  }
}
