import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoNumberKeyboard extends StatefulWidget {
  const DemoNumberKeyboard({super.key});

  @override
  _DemoNumberKeyboard createState() => _DemoNumberKeyboard();
}

class _DemoNumberKeyboard extends State<DemoNumberKeyboard> {
  TextEditingController testInput = TextEditingController();

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
        NButton(
          text: AppLocalizations.of(context)!.show_default_keyboard,
          type: "primary",
          onClick: () {
            NumberKeyboard(
              title: AppLocalizations.of(context)!.default_keyboard,
              closeButtomText: AppLocalizations.of(context)!.finish,
              extraKey: ".",
            ).show(context);
          },
        ),
        title(AppLocalizations.of(context)!.two_way_binding),
        Field(
          placeholder: AppLocalizations.of(context)!.placeholder_input,
          controller: testInput,
          readonly: true,
          onClick: () {
            NumberKeyboard(
                value: testInput.text,
                maxlength: 6,
                closeButtomText: AppLocalizations.of(context)!.finish,
                extraKey: ".",
                onChange: (String val) {
                  setState(() {
                    testInput.text = val;
                  });
                }).show(context);
          },
        ),
      ],
    ));
  }
}
