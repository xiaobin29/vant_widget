import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:vant_widget/main.dart';

class DemoSteps extends StatefulWidget {
  const DemoSteps({super.key});

  @override
  _DemoSteps createState() => _DemoSteps();
}

class _DemoSteps extends State<DemoSteps> {
  int _active = 1;

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
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
          Steps(steps: [
            StepItem(AppLocalizations.of(context)!.buyer_orders),
            StepItem(AppLocalizations.of(context)!.merchant_orders),
            StepItem(AppLocalizations.of(context)!.buyer_pick_up),
            StepItem(AppLocalizations.of(context)!.transaction_complete),
          ], active: _active),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Wrap(
                runSpacing: 10,
                children: <Widget>[
                  NButton(
                    text: AppLocalizations.of(context)!.prev,
                    type: "primary",
                    plain: true,
                    onClick: () {
                      setState(() {
                        _active -= 1;
                        if (_active < 0) _active = 3;
                      });
                    },
                  ),
                  const SizedBox(width: 6),
                  NButton(
                    text: AppLocalizations.of(context)!.next,
                    type: "primary",
                    plain: true,
                    onClick: () {
                      setState(() {
                        _active += 1;
                        if (_active > 3) _active = 0;
                      });
                    },
                  ),
                ],
              )),
          title(AppLocalizations.of(context)!.custom_style),
          Steps(
            steps: [
              StepItem(AppLocalizations.of(context)!.buyer_orders),
              StepItem(AppLocalizations.of(context)!.merchant_orders),
              StepItem(AppLocalizations.of(context)!.buyer_pick_up),
              StepItem(AppLocalizations.of(context)!.transaction_complete),
            ],
            active: _active,
            activeIcon: Icons.done,
            inactiveIcon: Icons.chevron_right,
            activeColor: Colors.green,
          ),
          title(AppLocalizations.of(context)!.vertical_step_bar),
          Steps(
            steps: [
              StepItem(AppLocalizations.of(context)!.step1, "2016-07-12 12:40"),
              StepItem(AppLocalizations.of(context)!.step2, "2016-07-12 12:40"),
              StepItem(AppLocalizations.of(context)!.step3, "2016-07-12 12:40"),
              StepItem(AppLocalizations.of(context)!.step4, "2016-07-12 12:40")
            ],
            active: _active,
            direction: 'vertical',
          ),
        ]));
  }
}
