import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoCheckbox extends StatefulWidget {
  const DemoCheckbox({super.key});

  @override
  _DemoCheckbox createState() => _DemoCheckbox();
}

class _DemoCheckbox extends State<DemoCheckbox> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<CheckItem> list = [
      CheckItem(name: "a", text: AppLocalizations.of(context)!.checkbox)
    ];

    List<CheckItem> list2 = [
      CheckItem(name: "a", text: AppLocalizations.of(context)!.checkbox),
      CheckItem(name: "b", text: AppLocalizations.of(context)!.checkbox),
      CheckItem(
          name: "c",
          text: AppLocalizations.of(context)!.checkbox,
          checkedColor: Colors.green),
      CheckItem(name: "d", text: AppLocalizations.of(context)!.checkbox, disabled: true),
    ];

    List<CheckItem> list3 = [
      CheckItem(name: "a", text: AppLocalizations.of(context)!.checkbox),
      CheckItem(name: "b", text: AppLocalizations.of(context)!.checkbox),
      CheckItem(name: "c", text: AppLocalizations.of(context)!.checkbox),
    ];
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title(AppLocalizations.of(context)!.basic_usage),
        CheckboxGroup(
          list: list,
          values: const ["a"],
          onChange: (list) {
            Utils.toast(list.toString());
          },
        ),
        title(AppLocalizations.of(context)!.disabled_status),
        CheckboxGroup(
          list: list,
          values: const ["a"],
          disabled: true,
        ),
        title(AppLocalizations.of(context)!.custom_shape),
        CheckboxGroup(
          list: list,
          values: const ["a"],
          shape: "square",
        ),
        title(AppLocalizations.of(context)!.custom_color),
        CheckboxGroup(
          list: list,
          values: const ["a"],
          checkedColor: Colors.green,
        ),
        title(AppLocalizations.of(context)!.checkbox_group),
        CheckboxGroup(
          list: list2,
          values: const ["a", "b"],
        ),
        title(AppLocalizations.of(context)!.max_count),
        CheckboxGroup(
          list: list3,
          values: const ["a"],
          max: 2,
        ),
        title(AppLocalizations.of(context)!.cell_component),
        CheckboxGroup(
          list: list3,
          values: const ['a'],
          inCellGroup: true,
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ));
  }
}
