import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:vant_widget/main.dart';

import '../utils/index.dart';

class DemoPicker extends StatefulWidget {
  const DemoPicker({super.key});

  @override
  _DemoPicker createState() => _DemoPicker();
}

class _DemoPicker extends State<DemoPicker> {
  String? _city;
  int? _cityId;

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    dynamic options = [
      PickerItem(AppLocalizations.of(context)!.hangzhou),
      PickerItem(AppLocalizations.of(context)!.ningbo),
      PickerItem(AppLocalizations.of(context)!.wenzhou),
      PickerItem(AppLocalizations.of(context)!.jiaxing),
      PickerItem(AppLocalizations.of(context)!.huzhou)
    ];

    dynamic options1 = [
      PickerItem(AppLocalizations.of(context)!.zhejiang, child: [
        PickerItem(AppLocalizations.of(context)!.hangzhou),
        PickerItem(AppLocalizations.of(context)!.ningbo),
        PickerItem(AppLocalizations.of(context)!.wenzhou),
        PickerItem(AppLocalizations.of(context)!.jiaxing),
        PickerItem(AppLocalizations.of(context)!.huzhou)
      ]),
      PickerItem(AppLocalizations.of(context)!.fujiang, child: [
        PickerItem(AppLocalizations.of(context)!.fuzhou),
        PickerItem(AppLocalizations.of(context)!.xiamen),
        PickerItem(AppLocalizations.of(context)!.putian),
        PickerItem(AppLocalizations.of(context)!.sanming),
      ]),
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title(AppLocalizations.of(context)!.basic_usage),
          Picker(colums: options),
          title(AppLocalizations.of(context)!.default_selected),
          Picker(colums: options, defaultIndex: 2),
          title(AppLocalizations.of(context)!.show_top_bar),
          Picker(
              colums: options,
              showToolbar: true,
              title: AppLocalizations.of(context)!.title,
              onCancel: (values, index) {
                Utils.toast(AppLocalizations.of(context)!.cancel);
              },
              onConfirm: (values, index) {
                Utils.toast("${AppLocalizations.of(context)!.tip_confirm}$values, $index");
              }),
          title(AppLocalizations.of(context)!.use_with_popup),
          Cell(
            title: AppLocalizations.of(context)!.city,
            isLink: true,
            value: _city,
            onClick: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Picker(
                      colums: options,
                      defaultIndex: _cityId,
                      showToolbar: true,
                      onConfirm: (values, index) {
                        setState(() {
                          _city = values.join('');
                          _cityId = index;
                        });
                        Navigator.of(context).pop();
                      },
                      onCancel: (values, index) {
                        Navigator.of(context).pop();
                      },
                    );
                  });
            },
          ),
          title(AppLocalizations.of(context)!.multi_column_linkage),
          Picker(
              colums: options1,
              level: 2,
              defaultIndex: const [0, 2],
              showToolbar: true,
              title: AppLocalizations.of(context)!.title,
              onCancel: (values, index) {
                Utils.toast(AppLocalizations.of(context)!.cancel);
              },
              onConfirm: (values, index) {
                Utils.toast("${AppLocalizations.of(context)!.tip_confirm}$values, $index");
              }),
          title(AppLocalizations.of(context)!.loading_status),
          Picker(colums: options1, level: 2, showToolbar: true, loading: true),
        ],
      ),
    );
  }
}
