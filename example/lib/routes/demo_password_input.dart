import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoPasswordInput extends StatefulWidget {
  const DemoPasswordInput({super.key});

  @override
  _DemoPasswordInput createState() => _DemoPasswordInput();
}

class _DemoPasswordInput extends State<DemoPasswordInput> {
  final String _value = "123";

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
        PasswordInput(
          value: _value,
          info: AppLocalizations.of(context)!.tip_password,
          onSubmitted: (val) {
            Utils.toast("onSubmitted $val");
          },
        ),
        title(AppLocalizations.of(context)!.custom_length),
        PasswordInput(
            value: "1234", info: AppLocalizations.of(context)!.placeholder_code, length: 4),
        title(AppLocalizations.of(context)!.clear_text_display),
        const PasswordInput(
          value: "12",
          mask: false,
        )
      ],
    ));
  }
}
