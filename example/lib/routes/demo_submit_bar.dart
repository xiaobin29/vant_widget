import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_flutter/main.dart';

class DemoSubmitBar extends StatefulWidget {
  const DemoSubmitBar({super.key});

  @override
  State<DemoSubmitBar> createState() => _DemoSubmitBar();
}

class _DemoSubmitBar extends State<DemoSubmitBar> {
  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
          SubmitBar(buttonText: AppLocalizations.of(context)!.submit_orders, price: 30.50),
          title(AppLocalizations.of(context)!.disabled_status),
          SubmitBar(
            buttonText: AppLocalizations.of(context)!.submit_orders,
            price: 30.50,
            tip: AppLocalizations.of(context)!.address_tip,
            tipIcon: Icons.error_outline,
            disabled: true,
          ),
          title(AppLocalizations.of(context)!.loading_status),
          SubmitBar(
            buttonText: AppLocalizations.of(context)!.submit_orders,
            price: 30.50,
            loading: true,
          ),
          title(AppLocalizations.of(context)!.advanced_usage),
          SubmitBar(
            buttonText: AppLocalizations.of(context)!.submit_orders,
            price: 30.50,
            tip: AppLocalizations.of(context)!.address_tip,
            customTip: GestureDetector(
              onTap: () {
                Utils.toast("Clicked Tip");
              },
              child: Text(AppLocalizations.of(context)!.change_address,
                  style: const TextStyle(fontSize: 12, color: Colors.blueAccent)),
            ),
            customLeft:
                NCheckbox(text: AppLocalizations.of(context)!.select_all, value: true),
          ),
        ]));
  }
}
