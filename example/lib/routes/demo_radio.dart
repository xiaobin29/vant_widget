import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoRadio extends StatefulWidget {
  const DemoRadio({super.key});

  @override
  _DemoRadio createState() => _DemoRadio();
}

class _DemoRadio extends State<DemoRadio> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(title, style: const TextStyle(fontSize: 14, color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<RadioItem> list = [
      RadioItem(name: "a", text: AppLocalizations.of(context)!.radio),
      RadioItem(name: "b", text: AppLocalizations.of(context)!.radio),
    ];
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title(AppLocalizations.of(context)!.basic_usage),
        RadioGroup(
          value: 'a',
          list: list,
        ),
        title(AppLocalizations.of(context)!.disabled_status),
        RadioGroup(list: list, value: 'a', disabled: true),
        title(AppLocalizations.of(context)!.custom_color),
        RadioGroup(list: list, value: 'a', checkedColor: Colors.green),
        title(AppLocalizations.of(context)!.custom_shape),
        RadioGroup(
          list: list,
          value: 'a',
          shape: 'square',
        ),
        title(AppLocalizations.of(context)!.use_with_cell),
        RadioGroup(
          list: list,
          value: 'a',
          inCellGroup: true,
        ),
      ],
    ));
  }
}
