import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../utils/index.dart';
import 'package:vant_widget/main.dart';

class DemoStepper extends StatefulWidget {
  const DemoStepper({super.key});

  @override
  _DemoStepper createState() => _DemoStepper();
}

class _DemoStepper extends State<DemoStepper> {
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
          CellGroup(
            children: <Widget>[
              Cell(
                title: AppLocalizations.of(context)!.basic_usage,
                customRight: Steppers(
                  onChange: (val) {
                    Utils.toast(val);
                  },
                ),
              ),
              Cell(
                title: AppLocalizations.of(context)!.step_size,
                customRight: Steppers(
                  step: 2,
                  onChange: (val) {
                    Utils.toast(val);
                  },
                ),
              ),
              Cell(
                title: AppLocalizations.of(context)!.limit_input_range,
                customRight: Steppers(
                  value: 5,
                  min: 5,
                  max: 10,
                  onChange: (val) {
                    Utils.toast(val);
                  },
                ),
              ),
              Cell(
                title: AppLocalizations.of(context)!.disabled_status,
                customRight: const Steppers(value: 1, disabled: true),
              ),
              Cell(
                title: AppLocalizations.of(context)!.displayed_input_status,
                customRight: Steppers(
                  value: 1,
                  disabledInput: true,
                  onChange: (val) {},
                ),
              ),
              Cell(
                title: AppLocalizations.of(context)!.decimal_point,
                customRight: Steppers(
                  value: 1,
                  step: 0.2,
                  decimalLength: 2,
                  inputWidth: 46,
                  onChange: (val) {},
                ),
              ),
              Cell(
                title: AppLocalizations.of(context)!.custom_size,
                customRight: Steppers(
                  value: 1,
                  size: 28,
                  inputWidth: 100,
                  onChange: (val) {},
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
